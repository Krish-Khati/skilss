# OpenCode Skills Pack

A curated, installable pack of **164 skills**, **108 specialist agents** and **9 slash commands** for [OpenCode](https://opencode.ai) — the ones you actually need to build websites and apps with AI, plus reverse-engineering and content packs.

Everything here has an upstream source. Nothing is vendored or re-hosted: the installer pulls from GitHub and npm, so updates upstream flow through.

## Install

```bash
./install.sh          # macOS / Linux
```

```powershell
.\install.ps1         # Windows
```

Requires **Node.js 22.20+** and **OpenCode 2.0.4+**. Restart OpenCode afterwards (`opencode service restart`).

## What you get

| Source | Skills | What it is |
|---|---|---|
| [`anthropics/skills`](https://github.com/anthropics/skills) | 13 | Anthropic's official Agent Skills + production skills |
| [`vercel-labs/agent-skills`](https://github.com/vercel-labs/agent-skills) | 4 | Vercel Labs — React/Next.js best practices, web design guidelines |
| [`nextlevelbuilder/ui-ux-pro-max-skill`](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) | 6 | UI/UX design intelligence — 79 styles, 192 palettes, 74 font pairings |
| [`emilkowalski/skills`](https://github.com/emilkowalski/skills) | 10 | Emil Kowalski — animation & UI craft |
| [`wondelai/skills`](https://github.com/wondelai/skills) | 12 | Guided journeys: create / improve / grow a website & app |
| [`sickn33/agentic-awesome-skills`](https://github.com/sickn33/agentic-awesome-skills) | 15 | app-builder, Next.js, Tailwind, shadcn, React patterns |
| [`alirezarezvani/claude-skills`](https://github.com/alirezarezvani/claude-skills) | 7 | Senior engineering, product & marketing |
| [`ComposioHQ/awesome-claude-skills`](https://github.com/ComposioHQ/awesome-claude-skills) | 17 | Content, research & marketing tooling |
| [`weisser-dev/awesome-opencode`](https://github.com/weisser-dev/awesome-opencode) | 46 | OpenCode-specific skills + 108 agents + 9 commands |
| [`SpecterOps/skills`](https://github.com/SpecterOps/skills) | 2 | Ghidra MCP & Binary Ninja MCP reverse engineering |
| [`Asaiuta/reverse-workbench-skill`](https://github.com/Asaiuta/reverse-workbench-skill) | 1 | 45-skill RE / CTF / pentest router |
| [`obra/superpowers`](https://github.com/obra/superpowers) *(plugin)* | 15 | Brainstorming, TDD, systematic debugging, planning |
| [`@dietrichgebert/ponytail`](https://www.npmjs.com/package/@dietrichgebert/ponytail) *(plugin)* | 6 | Lazy-senior-dev mode |

Full annotated list: **[SKILLS.md](SKILLS.md)** · machine-readable: **[manifest.json](manifest.json)**

## How it works after install

**You don't invoke skills.** Just describe the work in a prompt and the agent picks the right skill:

| You say | Loads |
|---|---|
| "build a restaurant website, mobile-first" | `create-website`, `design-taste-frontend`, `top-design` |
| "my UI looks amateur, fix it" | `refactoring-ui`, `design-md-reference` |
| "this React component is slow" | `react-patterns`, `performance-optimization` |
| "there's a bug in the login flow" | `systematic-debugging` |
| "build UI from this screenshot" | `ui-from-screenshot`, `image-to-code` |
| "deploy it" | `deploy-to-vercel`, `shipping-and-launch` |

`AGENTS.md` is installed globally so the agent does this without being asked. Slash commands (`/spec`, `/plan`, `/build`, `/test`, `/review`, `/ship`, `/code-simplify`, `/webperf`, `/constraints`) exist as optional shortcuts.

## Repo layout

```
SKILLS.md      all 164 skills, grouped by source, with descriptions
manifest.json  machine-readable manifest (drives install.sh / install.ps1)
install.sh     installer for macOS / Linux
install.ps1    installer for Windows
agents/        108 OpenCode specialist subagents
commands/      9 slash commands
AGENTS.md      global instruction so skills trigger automatically
```

## Notes

- **Agents ship without a pinned `model:`** so they inherit whatever model you're using. Add `model: provider/model` to any agent file to pin one.
- **Some skills reach outside** — `connect-apps` (Gmail/Slack/GitHub), `developer-growth-analysis` (posts to Slack), `youtube-downloader`. They need credentials and send data out; review before first use.
- **`weisser-dev/awesome-opencode` also ships 85 reverse-engineering skills** that are not in this pack. Add them with:
  ```bash
  npx skills add Asaiuta/reverse-workbench-skill --skill '*' --agent opencode --global --full-depth -y
  ```
- Skills install to `~/.agents/skills/`, agents to `~/.config/opencode/agent/`, commands to `~/.config/opencode/command/`. To scope skills down for one project, set `skills.paths` in that project's `opencode.json`.

## Credits

All skills and agents remain under their original authors' licenses — see each upstream repo. This repository only curates and installs them.
