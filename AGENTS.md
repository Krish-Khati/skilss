# Global instructions (applies to every project)

## Skills — use them proactively

Before starting any non-trivial task, check whether a relevant skill exists and load it with the `skill` tool.

- Trigger for: UI and design work, writing or changing code, debugging, testing, writing specs or plans, performance, security, deployment, accessibility, content and copy, research, and mobile work.
- Load the 1–3 most specific matching skills, not all of them.
- Do not ask the user which skill to use. Choose it yourself and proceed.
- If a skill covers the task, follow it instead of improvising a workflow.

## Agents — dispatch the specialists

`~/.config/opencode/agent/` holds 108 specialist subagents: `frontend-developer`, `backend-developer`, `fullstack-developer`, `react-specialist`, `nextjs-developer`, `typescript-pro`, `python-pro`, `mobile-developer`, `flutter-expert`, `ios-developer`, `architect-reviewer`, `code-reviewer`, `test-writer`, `security-auditor`, `performance-engineer`, `ux-researcher`, `devops-engineer`, `database-optimizer`, `api-designer`, and more.

When a task matches an agent's description, dispatch it through the `subagent` tool instead of doing that work inline. Use `explore` for fast read-only searching, and `general` for multi-step research.

## Slash commands are optional

`/spec`, `/plan`, `/build`, `/test`, `/review`, `/ship`, `/code-simplify`, `/webperf`, and `/constraints` exist as shortcuts, but the user should never have to run them. Reach for the equivalent skill automatically.
