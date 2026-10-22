#!/usr/bin/env bash
# OpenCode Skills Pack - installer for macOS / Linux
# Usage: ./install.sh
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MANIFEST="$REPO_DIR/manifest.json"
CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/opencode"

say() { printf '\n\033[1;36m==> %s\033[0m\n' "$1"; }
die() { printf '\033[1;31mERROR: %s\033[0m\n' "$1" >&2; exit 1; }

say "Checking prerequisites"
command -v node    >/dev/null 2>&1 || die "node not found (need Node.js 22.20+)"
command -v npx     >/dev/null 2>&1 || die "npx not found (need Node.js 22.20+)"
command -v opencode >/dev/null 2>&1 || die "opencode not found (need OpenCode 2.0.4+)"
[ -f "$MANIFEST" ] || die "manifest.json missing next to this script"
echo "  node $(node -v)   opencode $(opencode --version 2>/dev/null || echo unknown)"

mkdir -p "$CONFIG_DIR"

# ---------------------------------------------------------------- 1. CLI skills
say "Installing skills from upstream repos"
node -e '
const m = require(process.argv[1]);
const { execFileSync } = require("child_process");
let failed = 0;
for (const s of m.cli) {
  console.log(`\n--- ${s.source} (${s.skills.length} skills)`);
  const args = ["--yes", "skills", "add", s.source];
  for (const k of s.skills) args.push("--skill", k);
  args.push("--agent", "opencode", "--global", "--full-depth", "-y");
  try {
    execFileSync("npx", args, { stdio: "inherit" });
  } catch (e) {
    failed++;
    console.log(`  !! ${s.source} failed (exit ${e.status}) - continuing`);
  }
}
console.log(`\n${m.cli.length - failed}/${m.cli.length} sources installed`);
' "$MANIFEST"

# ---------------------------------------------------------------- 2. plugins
say "Registering OpenCode plugins"
node -e '
const fs = require("fs"), path = require("path");
const m = require(process.argv[1]);
const file = path.join(process.argv[2], "opencode.json");
let cfg = {};
if (fs.existsSync(file)) {
  try { cfg = JSON.parse(fs.readFileSync(file, "utf8")); } catch (e) {
    console.log("  !! existing opencode.json is not valid JSON - not touching it");
    process.exit(0);
  }
}
cfg.plugins = Array.isArray(cfg.plugins) ? cfg.plugins : [];
for (const p of m.plugins) {
  if (!cfg.plugins.includes(p.package)) cfg.plugins.push(p.package);
}
fs.writeFileSync(file, JSON.stringify(cfg, null, 2) + "\n");
console.log("  " + file);
console.log("  plugins: " + cfg.plugins.join(", "));
' "$MANIFEST" "$CONFIG_DIR"

# ---------------------------------------------------------------- 3. files
say "Copying agents, commands and instructions"
mkdir -p "$CONFIG_DIR/agent" "$CONFIG_DIR/command"
cp -f "$REPO_DIR"/agents/*.md   "$CONFIG_DIR/agent/"   2>/dev/null || true
cp -f "$REPO_DIR"/commands/*.md "$CONFIG_DIR/command/" 2>/dev/null || true
cp -f "$REPO_DIR/AGENTS.md"     "$CONFIG_DIR/AGENTS.md" 2>/dev/null || true
echo "  agents:   $(ls -1 "$CONFIG_DIR/agent" 2>/dev/null | wc -l | tr -d ' ')"
echo "  commands: $(ls -1 "$CONFIG_DIR/command" 2>/dev/null | wc -l | tr -d ' ')"
echo "  AGENTS.md installed"

# ---------------------------------------------------------------- 4. reverse workbench
say "Installing Reverse Workbench (uses the repo's own installer)"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
if git clone --depth 1 https://github.com/Asaiuta/reverse-workbench-skill.git "$TMP/rw" >/dev/null 2>&1; then
  bash "$TMP/rw/scripts/install-skill.sh" || echo "  !! reverse-workbench installer reported an error"
else
  echo "  !! clone failed - skipping (reverse-workbench-skill not installed)"
fi

say "Done"
cat <<'EOF'

Restart OpenCode (or run `opencode service restart`) to pick up the new skills.

Then just describe what you want in a prompt - the skills trigger on their own.
Open the /skills picker to see the full list.

EOF
