# OpenCode Skills Pack

**164 skills** - every one, with its upstream source, description, and a one-command installer.

Generated: 2026-10-22T14:15:56+05:30

## Install

```bash
./install.sh          # macOS / Linux
```
```powershell
.\install.ps1         # Windows
```

Needs Node.js 22.20+ and OpenCode 2.0.4+.

## What gets installed

| Source | Skills | What it is |
|---|---|---|
| `alirezarezvani/claude-skills` | 7 | Senior engineering, product & marketing skills |
| `anthropics/skills` | 13 | Anthropic official Agent Skills + production skills |
| `ComposioHQ/awesome-claude-skills` | 17 | Curated catalog (content, research, marketing) |
| `emilkowalski/skills` | 10 | Emil Kowalski - animation & UI craft |
| `nextlevelbuilder/ui-ux-pro-max-skill` | 6 | UI/UX design intelligence (styles, palettes, fonts, UX rules) |
| `sickn33/agentic-awesome-skills` | 15 | Large community pack (app-builder, nextjs, tailwind, shadcn) |
| `SpecterOps/skills` | 2 | Reverse engineering (Ghidra MCP, Binary Ninja MCP) |
| `vercel-labs/agent-skills` | 4 | Vercel Labs - React/Next.js best practices + web design guidelines |
| `weisser-dev/awesome-opencode` | 46 | OpenCode-specific: 46 skills + 108 agents + 9 commands |
| `wondelai/skills` | 12 | Guided journeys: create / improve / grow website & app |
| `obra/superpowers` (plugin) | 15 | Superpowers plugin (brainstorming, TDD, systematic debugging) |
| `@dietrichgebert/ponytail` (plugin) | 6 | Ponytail plugin (lazy-senior-dev mode) |
| `Asaiuta/reverse-workbench-skill` | 1 | Reverse Workbench - 45-skill RE / CTF / pentest router |
| **agents/** (this repo) | 108 | OpenCode specialist subagents |
| **commands/** (this repo) | 9 | Slash commands: /spec /plan /build /test /review /ship /code-simplify /webperf /constraints |
| **AGENTS.md** (this repo) | - | Global instruction so skills get used automatically |

---

## alirezarezvani/claude-skills  (7)

_Senior engineering, product & marketing skills_

- **`a11y-audit`** - Accessibility audit skill for scanning, fixing, and verifying WCAG 2.2 Level A and AA compliance across React, Next.js, Vue, Angular, Svelte, and plain HTML codebases. Use when auditing accessibility, fixing a11y violations, checking col...
- **`brand-guidelines`** - When the user wants to apply, document, or enforce brand guidelines for any product or company. Also use when the user mentions 'brand guidelines,' 'brand colors,' 'typography,' 'logo usage,' 'brand voice,' 'visual identity,' 'tone of vo...
- **`browser-automation`** - Use when the user asks to automate browser tasks, scrape websites, fill forms, capture screenshots, extract structured data from web pages, or build web automation workflows. NOT for testing — use playwright-pro for that.
- **`code-to-prd`** - Reverse-engineer any codebase into a complete Product Requirements Document (PRD). Analyzes routes, components, state management, API integrations, and user interactions to produce business-readable documentation detailed enough for engi...
- **`copywriting`** - When the user wants to write, rewrite, or improve marketing copy for any page — including homepage, landing pages, pricing pages, feature pages, about pages, or product pages. Also use when the user says "write copy for," "improve this c...
- **`senior-frontend`** - Frontend development skill for React, Next.js, TypeScript, and Tailwind CSS applications. Use when building React components, optimizing Next.js performance, analyzing bundle sizes, scaffolding frontend projects, implementing accessibili...
- **`senior-fullstack`** - Fullstack development toolkit with project scaffolding for Next.js, FastAPI, MERN, and Django stacks, code quality analysis with security and complexity scoring, and stack selection guidance. Use when the user asks to "scaffold a new pro...

## anthropics/skills  (13)

_Anthropic official Agent Skills + production skills_

- **`academy-guide`** - Stop and check this skill before finishing any reply to a question about how to use Claude or a Claude product — it recommends matching courses, tutorials, and use cases from Claude Academy (academy.claude.com), Anthropic's learning hub....
- **`algorithmic-art`** - Creating algorithmic art using p5.js with seeded randomness and interactive parameter exploration. Use this when users request creating art using code, generative art, algorithmic art, flow fields, or particle systems. Create original al...
- **`canvas-design`** - Create beautiful visual art in .png and .pdf documents using design philosophy. You should use this skill when the user asks to create a poster, piece of art, design, or other static piece. Create original visual designs, never copying e...
- **`claude-api`** - Reference for the Claude API / Anthropic SDK — model ids, pricing, params, streaming, tool use, MCP, agents, caching, token counting, model migration. TRIGGER — read BEFORE opening the target file; don't skip because it "looks like a one...
- **`discernment-nudge`** - After you give a substantive answer or draft that the user may act on — advice or recommendations, drafted artifacts such as goals, plans, pitches, proposals, or emails, estimates or projections, analysis or interpretation of data, factu...
- **`doc-coauthoring`** - Guide users through a structured workflow for co-authoring documentation. Use when user wants to write documentation, proposals, technical specs, decision docs, or similar structured content. This workflow helps users efficiently transfe...
- **`internal-comms`** - A set of resources to help me write all kinds of internal communications, using the formats that my company likes to use. Claude should use this skill whenever asked to write some sort of internal communications (status reports, leadersh...
- **`mcp-builder`** - Guide for creating high-quality MCP (Model Context Protocol) servers that enable LLMs to interact with external services through well-designed tools. Use when building MCP servers to integrate external APIs or services, whether in Python...
- **`slack-gif-creator`** - Knowledge and utilities for creating animated GIFs optimized for Slack. Provides constraints, validation tools, and animation concepts. Use when users request animated GIFs for Slack like "make me a GIF of X doing Y for Slack."
- **`template-skill`** - Replace with description of the skill and when Claude should use it.
- **`theme-factory`** - Toolkit for styling artifacts with a theme. These artifacts can be slides, docs, reportings, HTML landing pages, etc. There are 10 pre-set themes with colors/fonts that you can apply to any artifact that has been creating, or can generat...
- **`webapp-testing`** - Toolkit for interacting with and testing local web applications using Playwright. Supports verifying frontend functionality, debugging UI behavior, capturing browser screenshots, and viewing browser logs.
- **`web-artifacts-builder`** - Suite of tools for creating elaborate, multi-component claude.ai HTML artifacts using modern frontend web technologies (React, Tailwind CSS, shadcn/ui). Use for complex artifacts requiring state management, routing, or shadcn/ui componen...

## ComposioHQ/awesome-claude-skills  (17)

_Curated catalog (content, research, marketing)_

- **`changelog-generator`** - Automatically creates user-facing changelogs from git commits by analyzing commit history, categorizing changes, and transforming technical commits into clear, customer-friendly release notes. Turns hours of manual changelog writing into...
- **`competitive-ads-extractor`** - Extracts and analyzes competitors' ads from ad libraries (Facebook, LinkedIn, etc.) to understand what messaging, problems, and creative approaches are working. Helps inspire and improve your own ad campaigns.
- **`connect-apps`** - Connect Claude to external apps like Gmail, Slack, GitHub. Use this skill when the user wants to send emails, create issues, post messages, or take actions in external services.
- **`content-research-writer`** - Assists in writing high-quality content by conducting research, adding citations, improving hooks, iterating on outlines, and providing real-time feedback on each section. Transforms your writing process from solo effort to collaborative...
- **`developer-growth-analysis`** - Analyzes your recent Claude Code chat history to identify coding patterns, development gaps, and areas for improvement, curates relevant learning resources from HackerNews, and automatically sends a personalized growth report to your Sla...
- **`domain-name-brainstormer`** - Generates creative domain name ideas for your project and checks availability across multiple TLDs (.com, .io, .dev, .ai, etc.). Saves hours of brainstorming and manual checking.
- **`file-organizer`** - Intelligently organizes your files and folders across your computer by understanding context, finding duplicates, suggesting better structures, and automating cleanup tasks. Reduces cognitive load and keeps your digital workspace tidy wi...
- **`image-enhancer`** - Improves the quality of images, especially screenshots, by enhancing resolution, sharpness, and clarity. Perfect for preparing images for presentations, documentation, or social media posts.
- **`invoice-organizer`** - Automatically organizes invoices and receipts for tax preparation by reading messy files, extracting key information, renaming them consistently, and sorting them into logical folders. Turns hours of manual bookkeeping into minutes of au...
- **`langsmith-fetch`** - Debug LangChain and LangGraph agents by fetching execution traces from LangSmith Studio. Use when debugging agent behavior, investigating errors, analyzing tool calls, checking memory operations, or examining agent performance. Automatic...
- **`lead-research-assistant`** - Identifies high-quality leads for your product or service by analyzing your business, searching for target companies, and providing actionable contact strategies. Perfect for sales, business development, and marketing professionals.
- **`meeting-insights-analyzer`** - Analyzes meeting transcripts and recordings to uncover behavioral patterns, communication insights, and actionable feedback. Identifies when you avoid conflict, use filler words, dominate conversations, or miss opportunities to listen. P...
- **`raffle-winner-picker`** - Picks random winners from lists, spreadsheets, or Google Sheets for giveaways, raffles, and contests. Ensures fair, unbiased selection with transparency.
- **`skill-share`** - A skill that creates new Claude skills and automatically shares them on Slack using Rube for seamless team collaboration and skill discovery.
- **`tailored-resume-generator`** - Analyzes job descriptions and generates tailored resumes that highlight relevant experience, skills, and achievements to maximize interview chances
- **`twitter-algorithm-optimizer`** - Analyze and optimize tweets for maximum reach using Twitter's open-source algorithm insights. Rewrite and edit user tweets to improve engagement and visibility based on how the recommendation system ranks content.
- **`youtube-downloader`** - Download YouTube videos with customizable quality and format options. Use this skill when the user asks to download, save, or grab YouTube videos. Supports various quality settings (best, 1080p, 720p, 480p, 360p), multiple formats (mp4, ...

## emilkowalski/skills  (10)

_Emil Kowalski - animation & UI craft_

- **`animation-performance`** - Keep web animations inside the frame budget — animate composite-only properties, keep motion off the main thread when the page is busy, and find the cause when an animation drops frames. Covers the layout/paint/composite pipeline, cheape...
- **`animation-vocabulary`** - Reverse-lookup glossary that turns a vague description of a web animation or motion effect into its exact term ("the bouncy thing when a popover opens" → Pop in; "the iOS rubber-band scroll" → Rubber-banding). Use when the user asks "wha...
- **`apple-design`** - Apple's approach to interface design and fluid, physical motion, translated for the web. Use when building or reviewing gesture-driven UI, spring animations, drag/swipe/sheet interactions, momentum and interruptible transitions, transluc...
- **`break-ui`** - Try to break a piece of UI by feeding it worst-case data — long names, unbreakable emails, one-letter names, missing fields, huge counts, zero items, long labels, non-Latin text, emoji, extreme numbers — then render it behind a "Demo dat...
- **`emil-design-eng`** - This skill encodes Emil Kowalski's philosophy on UI polish, component design, animation decisions, and the invisible details that make software feel great.
- **`improve-animations`** - Survey a codebase's animation and motion code as a senior motion advisor, then produce a prioritized audit and self-contained implementation plans for other agents (or cheaper models) to execute. Read-only on source code — it plans impro...
- **`mobile-native`** - Make a web app feel native on a phone — the small CSS and meta-tag fixes that separate "a website in a browser" from something that feels installed. Covers sticky hover states, tap highlight flashes, the 100vh bug, inputs that zoom the p...
- **`pick-ui-library`** - Pick the right library for a given frontend task from a curated, opinionated list — numbers, OTP inputs, charts, command menus, virtualization, drag and drop, toasts, state, styling, and more.
- **`prototype`** - Build multiple genuinely different versions of a UI piece you describe, rendered behind a visual picker so you can flip through them live and promote the one that feels right.
- **`review-animations`** - Reviews animation and motion code against a high craft bar derived from Emil Kowalski's design engineering philosophy. Default to flagging; approval is earned.

## nextlevelbuilder/ui-ux-pro-max-skill  (6)

_UI/UX design intelligence (styles, palettes, fonts, UX rules)_

- **`banner-design`** - Design banners for social media, ads, website heroes, creative assets, and print. Multiple art direction options with optional generated or supplied visuals. Actions: design, create, generate banner. Platforms: Facebook, Twitter/X, Linke...
- **`brand`** - Brand voice, visual identity, messaging frameworks, asset management, brand consistency. Activate for branded content, tone of voice, marketing assets, brand compliance, style guides.
- **`design`** - Comprehensive design skill: brand identity, design tokens, UI styling, logo generation (55 styles, Gemini, Atlas Cloud, or MuAPI AI), corporate identity program (50 deliverables, CIP mockups), HTML presentations (Chart.js), banner design...
- **`design-system`** - Token architecture, component specifications, and slide generation. Three-layer tokens (primitive→semantic→component), CSS variables, spacing/typography scales, component specs, strategic slide creation. Use for design tokens, systematic...
- **`ui-styling`** - Create beautiful, accessible user interfaces with shadcn/ui components (built on Radix UI + Tailwind), Tailwind CSS utility-first styling, and canvas-based visual designs. Use when building user interfaces, implementing design systems, c...
- **`ui-ux-pro-max`** - UI/UX design intelligence for web, mobile, and desktop. This skill should be used when designing, building, reviewing, or fixing interfaces, including pages, components, design systems, accessibility, interaction, responsive layout, typo...

## sickn33/agentic-awesome-skills  (15)

_Large community pack (app-builder, nextjs, tailwind, shadcn)_

- **`app-builder`** - Main application building orchestrator. Creates full-stack applications from natural language requests. Determines project type, selects tech stack, coordinates agents.
- **`build-ui`** - Step-by-step workflow for UI work: read the project, follow the plan for the job (new screen, dashboard, polish, simplify, review), then render, fix and check again.
- **`business-website-setup`** - Website page register: URL, title, meta description, search intent, NAP block, schema type, canonical, indexability and Core Web Vitals target. Use for site builds and SEO reviews.
- **`flutter-expert`** - Master Flutter development with Dart 3, advanced widgets, and multi-platform deployment.
- **`frontend-design`** - Design and implement a distinctive frontend within the product’s existing brand, accessibility, performance and framework constraints.
- **`ios-developer`** - Develop native iOS applications with Swift/SwiftUI. Masters iOS 18, SwiftUI, UIKit integration, Core Data, networking, and App Store optimization.
- **`landing-page-generator`** - Generates high-converting Next.js/React landing pages with Tailwind CSS. Uses PAS, AIDA, and BAB frameworks for optimized copy/components (Heroes, Features, Pricing). Focuses on Core Web Vitals/SEO.
- **`micro-saas-launcher`** - Expert in launching small, focused SaaS products fast - the indie hacker approach to building profitable software. Covers idea validation, MVP development, pricing, launch strategies, and growing to sustainable revenue. Ship in weeks, no...
- **`nextjs-app-router-patterns`** - Comprehensive patterns for Next.js 14+ App Router architecture, Server Components, and modern full-stack React development.
- **`nextjs-best-practices`** - Next.js App Router principles. Server Components, data fetching, routing patterns.
- **`react-patterns`** - Modern React patterns and principles. Hooks, composition, performance, TypeScript best practices.
- **`react-state-management`** - Master modern React state management with Redux Toolkit, Zustand, Jotai, and React Query. Use when setting up global state, managing server state, or choosing between state management solutions.
- **`shadcn`** - Manages shadcn/ui components and projects, providing context, documentation, and usage patterns for building modern design systems.
- **`tailwind-patterns`** - Tailwind CSS v4 principles. CSS-first configuration, container queries, modern patterns, design token architecture.
- **`ui-from-screenshot`** - Turn a screenshot or mockup into matching UI with the project's own components, then compare the result side by side with the image and fix the differences.

## SpecterOps/skills  (2)

_Reverse engineering (Ghidra MCP, Binary Ninja MCP)_

- **`binary-ninja-mcp-analysis`** - Provides Binary Ninja IL documentation and MCP server usage guidance for binary analysis and reverse engineering
- **`ghidra-mcp-analysis`** - Use for reverse engineering and binary analysis with LaurieWired/GhidraMCP. Trigger for Ghidra MCP setup, bridge_mcp_ghidra.py usage, GhidraMCP plugin workflows, decompilation, function/string/import/export/xref analysis, renaming functi...

## vercel-labs/agent-skills  (4)

_Vercel Labs - React/Next.js best practices + web design guidelines_

- **`deploy-to-vercel`** - Deploy applications and websites to Vercel. Use when the user requests deployment actions like "deploy my app", "deploy and give me the link", "push this live", or "create a preview deployment".
- **`vercel-cli-with-tokens`** - Deploy and manage projects on Vercel using token-based authentication. Use when working with Vercel CLI using access tokens rather than interactive login — e.g. "deploy to vercel", "set up vercel", "add environment variables to vercel".
- **`vercel-optimize`** - Use for Vercel cost and performance optimization on deployed projects, especially Next.js, SvelteKit, Nuxt, and limited Astro apps. Collect Vercel metrics, usage, project config, and code scan results first; investigate only metric-backe...
- **`writing-guidelines`** - Review docs/prose for Writing Guidelines compliance. Use when asked to "review my docs", "check writing style", "audit prose", "review docs voice and tone", or "check this page against the writing handbook".

## weisser-dev/awesome-opencode  (46)

_OpenCode-specific: 46 skills + 108 agents + 9 commands_

- **`adr-write`** - Create Architecture Decision Records using the Michael Nygard template with context, decision, alternatives, and consequences
- **`api-and-interface-design`** - Guides stable API and interface design. Use when designing APIs, module boundaries, or any public interface. Use when creating REST or GraphQL endpoints, defining type contracts between modules, or establishing boundaries between fronten...
- **`api-contract`** - Generate or validate OpenAPI and AsyncAPI specs from code or requirements with consistent naming, errors, and pagination
- **`changelog-generate`** - Generate CHANGELOG.md from git history in Keep a Changelog format with Added, Changed, Deprecated, Removed, Fixed, and Security categories
- **`ci-cd-and-automation`** - Automates CI/CD pipeline setup. Use when setting up or modifying build and deployment pipelines. Use when you need to automate quality gates, configure test runners in CI, or establish deployment strategies.
- **`ci-pipeline`** - Generate CI/CD pipeline config for detected platform with lint, test, build, and deploy stages
- **`code-review-and-quality`** - Conducts multi-axis code review. Use before merging any change. Use when reviewing code written by yourself, another agent, or a human. Use when you need to assess code quality across multiple dimensions before it enters the main branch....
- **`code-simplification`** - Simplifies code for clarity. Use when refactoring code for clarity without changing behavior. Use when code works but is harder to read, maintain, or extend than it should be. Use when reviewing code that has accumulated unnecessary comp...
- **`constraint-driven-development`** - Establishes a project's quality bar as a written contract and stops agents quietly lowering it. Interviews the user on which dimensions matter, supplies sane default thresholds when they have no number in mind, records everything in CONS...
- **`context-engineering`** - Optimizes agent context setup. Use when starting a new session, when agent output quality degrades, when switching between tasks, or when you need to configure rules files and context for a project.
- **`debugging-and-error-recovery`** - Guides systematic root-cause debugging. Use when tests fail, builds break, something that worked yesterday broke, behavior doesn't match expectations, or you encounter any unexpected error. Use when you need to figure out what broke and ...
- **`dependency-audit`** - Scan dependencies for CVEs, outdated packages, license issues, and unused deps to produce a prioritized remediation list
- **`deploy`** - Guide deployment processes including CI/CD pipeline creation, environment setup, and rollback procedures
- **`deprecation-and-migration`** - Manages deprecation and migration. Use when removing old systems, APIs, or features. Use when migrating users from one implementation to another. Use when migrating a database schema in production, such as renaming or dropping a column w...
- **`design-md-reference`** - Library of DESIGN.md design-system analyses (colors, typography, spacing, components, do's and don'ts) of well-known product websites, from VoltAgent/awesome-design-md. Use when a brief says "make it feel like <product>" or when you need...
- **`design-taste-frontend`** - Anti-slop frontend skill for landing pages, portfolios, and redesigns. The agent reads the brief, infers the right design direction, and ships interfaces that do not look templated. Real design systems when applicable, audit-first on red...
- **`design-workflow`** - End-to-end workflow for frontend design work - write a design brief, pick one taste skill and optionally a DESIGN.md reference, implement, review against the web interface guidelines, and verify with local Playwright screenshots. Use whe...
- **`docker-optimize`** - Analyze Dockerfile and produce optimized version with multi-stage builds, layer caching, minimal base, and security hardening
- **`documentation-and-adrs`** - Records decisions and documentation. Use when you need to document an architecture decision (ADR) or the reasoning behind a design choice, when changing public APIs, shipping features, or when you need to record context that future engin...
- **`doubt-driven-development`** - Subjects every non-trivial decision to a fresh-context adversarial review before it stands. Use when you want every assumption cross-examined before proceeding, when stress-testing a plan for hidden failure modes, when correctness matter...
- **`env-setup`** - Bootstrap developer environment by detecting project type, listing prerequisites, generating .env.example, and producing a Getting Started guide
- **`error-triage`** - Parse stack traces and error logs to identify root cause, find related code, and suggest fixes with severity classification
- **`frontend-ui-engineering`** - Builds production-quality, accessible, responsive user-facing UIs. Use when building or modifying interfaces and pages, creating components, implementing layouts, meeting WCAG accessibility requirements, managing state, or when the outpu...
- **`git-release`** - Create consistent releases with changelogs, version bumps, and release notes from git history
- **`git-workflow-and-versioning`** - Structures git workflow practices. Use when making any code change. Use when committing, branching, resolving conflicts, splitting uncommitted work in a messy working tree into clean atomic commits, opening or reviewing a pull request (P...
- **`gpt-taste`** - Elite UX/UI & Advanced GSAP Motion Engineer. Enforces Python-driven true randomization for layout variance, strict AIDA page structure, wide editorial typography (bans 6-line wraps), gapless bento grids, strict GSAP ScrollTriggers (pinni...
- **`idea-refine`** - Refines raw ideas into sharp, actionable concepts through structured divergent and convergent thinking. Use when an idea is still vague, when you need to stress-test assumptions before committing to a plan, or when you want to expand opt...
- **`image-to-code`** - Image-to-code skill for visually important web work. Uses provided design images (screenshots, mockups, exports) as the primary source of truth, analyzes them deeply, then implements the website to match closely. Avoids cards-inside-card...
- **`incident-postmortem`** - Guide creation of blameless postmortem with timeline, root cause analysis, impact assessment, and action items
- **`incremental-implementation`** - Delivers changes incrementally in thin, verifiable slices. Use when implementing any feature or change that touches more than one file, or when picking up the next task from a plan. Use when rolling a change out behind a feature flag, wh...
- **`interview-me`** - Extracts what the user actually wants instead of what they think they should want. Achieves this through one-question-at-a-time interview until ~95% confidence about the underlying intent. Use when an ask is underspecified ("build me X" ...
- **`migration`** - Plan and execute database or framework migrations with rollback strategies
- **`minimalist-ui`** - Clean editorial-style interfaces. Warm monochrome palette, typographic contrast, flat bento grids, muted pastels. No gradients, no heavy shadows.
- **`observability-and-instrumentation`** - Instruments code so production behavior is visible and diagnosable. Use when adding logging, metrics, tracing, or alerting. Use when shipping any feature that runs in production and you need evidence it works. Use when production issues ...
- **`performance-optimization`** - Optimizes application performance across frontend, backend, queries, and databases. Use when performance requirements exist, when you suspect performance regressions, when Core Web Vitals or load times need improvement, when N+1 query pa...
- **`performance-profile`** - Analyze code for performance hotspots including complexity, N+1 queries, memory allocations, and caching opportunities
- **`planning-and-task-breakdown`** - Breaks work into ordered tasks. Use when you have a spec or clear requirements and need to break work into implementable tasks. Use when a task feels too large to start, when you need to estimate scope, or when parallel work is possible.
- **`playwright-cli`** - Drive a local browser with playwright-cli to verify frontend work - screenshots at several viewports, light and dark color scheme, reduced motion, console errors, accessibility snapshot. Use for visual checks of pages served on localhost...
- **`pr-review`** - Structured pull request review with checklist, security scan, and actionable feedback
- **`redesign-existing-projects`** - Upgrades existing websites and apps to premium quality. Audits current design, identifies generic AI patterns, and applies high-end design standards without breaking functionality. Works with any CSS framework or vanilla CSS.
- **`security-and-hardening`** - Hardens code against vulnerabilities. Use when auditing an input handler for vulnerabilities, when handling user input, authentication, data storage, or external integrations, or when checking a login flow is safe against the OWASP Top T...
- **`shipping-and-launch`** - Prepares production launches. Use when preparing to deploy to production, or when asking what needs to be in place before shipping. Use when you need a pre-launch checklist, when setting up monitoring, when planning a staged rollout, or ...
- **`spec-driven-development`** - Creates specs before coding. Use when starting a new project, feature, or significant change and no specification exists yet. Use when drafting a PRD or requirements document with objectives and scope, or when requirements are unclear, a...
- **`test-patterns`** - Generate tests following project conventions with proper patterns for unit, integration, and e2e testing
- **`using-agent-skills`** - Discovers and invokes agent skills. Use when starting a session, or when you need to decide which skill or workflow applies to the piece of work at hand. This is the meta-skill that governs how all other skills are discovered and invoked.
- **`web-design-guidelines`** - Review UI code against the Web Interface Guidelines (accessibility, focus, forms, motion, typography, performance, copy). Use when asked to review a UI, check accessibility, audit a design or UX, or check a site against best practices.

## wondelai/skills  (12)

_Guided journeys: create / improve / grow website & app_

- **`create-app`** - Guided journey from a raw app idea to a validated, cleanly architected first version that ships on a sustainable cadence. Orchestrates ten skills phase by phase - lean-startup, design-sprint, clean-architecture, domain-driven-design, cle...
- **`create-website`** - Guided journey from a blank page to a live, high-converting website, built message-first, then design, then conversion. Orchestrates ten skills phase by phase - one-page-marketing, storybrand-messaging, made-to-stick, top-design, web-typ...
- **`design-code-architecture`** - Guided journey from an app idea to a deliberate architecture: boundaries, domain model, data decisions, and resilience, making only the expensive-to-reverse decisions and deferring the rest. Orchestrates eight skills phase by phase - cle...
- **`grow-website`** - Guided journey from a website with traffic it under-converts to a research-driven growth engine that captures more leads, persuades more buyers, sells a sharper offer, and earns referrals. Orchestrates eight skills phase by phase - cro-m...
- **`improve-app`** - Guided journey from a shipped app that works but feels rough to a product that fits the job, flows without friction, reads clearly, and persuades honestly. Orchestrates nine skills phase by phase - jobs-to-be-done, ux-heuristics, design-...
- **`improve-website`** - Guided journey from a live website that underperforms to a prioritized, evidence-backed backlog of conversion, usability, message, and speed fixes - each shipped as a testable experiment. Orchestrates eight skills phase by phase - cro-me...
- **`ios-hig-design`** - Design native iOS interfaces following Apple Human Interface Guidelines. Use when the user mentions "iPhone app", "iPad layout", "SwiftUI", "UIKit", "Dynamic Island", "safe areas", "HIG compliance", "SF Symbols", "haptic feedback", "iOS ...
- **`refactoring-ui`** - Audit and fix visual hierarchy, spacing, color, and depth in web UIs. Use when the user mentions "my UI looks off" (or amateur/unprofessional), "fix the design", "Tailwind styling", "color palette", "visual hierarchy", "design system", "...
- **`system-design`** - Design scalable distributed systems using structured approaches for load balancing, caching, database scaling, and message queues. Use when the user mentions "system design", "scale this", "high availability", "rate limiter", "design a U...
- **`top-design`** - Create award-winning, immersive web experiences at the level of Awwwards-featured agencies. Use when the user mentions "Awwwards quality", "make my site stunning", "scroll animations", "parallax storytelling", "cinematic web design", "po...
- **`ux-heuristics`** - Evaluate and improve interface usability using heuristic analysis. Use when the user mentions "usability audit", "users are confused", "form usability", "navigation problems", "Nielsen heuristics", "cognitive walkthrough", or "is this ea...
- **`web-typography`** - Select, pair, and implement typefaces for web projects. Use when the user mentions "font pairing", "which typeface", "line height", "responsive typography", "web font loading", "type hierarchy", "variable fonts", "FOUT/FOIT", "typographi...

## obra/superpowers  (15)

_Superpowers plugin (brainstorming, TDD, systematic debugging) - installed as an OpenCode plugin._

- **`brainstorming`** - You MUST use this before any creative work - creating features, building components, adding functionality, modifying behavior, or planning anything new, in software or out of it (a talk, a business, a renovation).
- **`diagnosing-superpowers`** - Use when a superpowers session went wrong and your human partner wants to know why — repeated work, ignored plans, stumbles, poor results, a skill that didn't fire, "it took too long", "why is it so expensive", "what is it doing" — or wants to build a bug report for the superpowers maintainers, for the current session or a past one identified by id or path, on any harness.
- **`dispatching-parallel-agents`** - Use when facing 2+ independent tasks that can be worked on without shared state or sequential dependencies
- **`executing-plans`** - Use when executing an implementation plan in the current session as the implementer yourself — your human partner chose inline execution, or no subagent tool is available
- **`finishing-a-development-branch`** - Use when implementation is complete, all tests pass, and you need to decide how to integrate the work
- **`receiving-code-review`** - Use when receiving code review feedback, before implementing suggestions, especially if feedback seems unclear or technically questionable - requires technical rigor and verification, not performative agreement or blind implementation
- **`requesting-code-review`** - Use when completing tasks, implementing major features, or before merging to verify work meets requirements
- **`subagent-driven-development`** - Use when executing implementation plans with independent tasks in the current session
- **`systematic-debugging`** - Use when encountering any bug, test failure, or unexpected behavior, before proposing fixes
- **`test-driven-development`** - Use when implementing any feature or bugfix, before writing implementation code
- **`using-git-worktrees`** - Use when starting feature work that needs isolation from current workspace or before executing implementation plans - ensures an isolated workspace exists via native tools or git worktree fallback
- **`using-superpowers`** - Use when starting any conversation - establishes how to find and use skills, requiring skill invocation before ANY response including clarifying questions
- **`verification-before-completion`** - Use when about to claim work is complete, fixed, or passing, before committing or creating PRs - requires running verification commands and confirming output before making any success claims; evidence before assertions always
- **`writing-plans`** - Use when you have a spec or requirements for a multi-step task, before touching code
- **`writing-skills`** - Use when creating new skills, editing existing skills, or verifying skills work before deployment

## @dietrichgebert/ponytail  (6)

_Ponytail plugin (lazy-senior-dev mode) - installed as an OpenCode plugin._

- **`ponytail`** - Lazy senior dev mode: the smallest change that fully solves the task, and a reply a busy human understands in one read. Use on any coding task (writing, fixing, refactoring, reviewing, choosing dependencies) and when the user says "ponytail", "be lazy", "simplest solution", "yagni", or complains about over-engineering or bloat. Levels: lite, full (default), ultra.
- **`ponytail-audit`** - Quality audit of a whole repo: bugs, security holes, what breaks under real load, risky code without tests, slow paths, and what to delete, merge or split. Ranked, each finding explained in plain English. One-shot report, changes nothing. Use for "audit this codebase", "review the whole repo", "find bloat", "what can I delete", /ponytail-audit.
- **`ponytail-debt`** - List every `shortcut:` comment (and older `ponytail:` ones) as a debt ledger. One-shot report, changes nothing. Use for "ponytail debt", "what did ponytail defer", "list the shortcuts", /ponytail-debt.
- **`ponytail-gain`** - Show ponytail's measured savings (code, cost, speed) from the benchmark. One-shot display. Use for /ponytail-gain, "what does ponytail save", "ponytail impact".
- **`ponytail-help`** - Quick reference for ponytail levels, skills and commands. One-shot display. Use for /ponytail-help, "ponytail help", "how do I use ponytail".
- **`ponytail-review`** - Quality review of a change: is the logic right, is it safe, does it hold under real load, is risky code tested, is it fast enough, and is every line needed. Reads the connected code, not only the diff. Each finding is explained in plain English. Use for "review this", "code review", "review the last commit", "review my PR", "is this over-engineered", /ponytail-review.

---

## Not in this pack

- `google-workspace` - pre-existing on the source machine, not part of this pack
- `import-memory` - pre-existing on the source machine, not part of this pack
- `morning` - pre-existing on the source machine, not part of this pack

