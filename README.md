# Claude Leaders Workshop

**The summary of everyone's specs is in [IDEAS.md](IDEAS.md). It appears at about 4:45 on Oct 6.**

Moving Faster Together, New York.

This is a shared workspace for the Claude leaders user group in New York. You write a spec for one task your team repeats. A spec is a short set of rules an agent follows. You share it for a Claude review. Then you merge the best ideas from everyone's specs into your own.

Claude runs every git step for you and explains each one. You make the decisions. Exercise 1 works in Claude Code, Cowork, or Claude chat with code execution. Exercises 2 and 3 need Claude Code on a laptop, because they sign in to GitHub. No Claude Code? Pair with a neighbor who has it.

## Exercise 1: Pull & Spec

Type this into Claude:

```
Clone github.com/praecipio-community/claude-leaders-workshop and follow its CLAUDE.md. Start exercise 1.
```

Claude copies this repo, checks your GitHub account, and asks you about 8 short questions. Then it writes `spec.md` for one task. Nothing is shared yet.

Why: these are the questions we ask when we choose which work an agent should do first. Does it follow the same steps every time? Can you check the result? Is it allowed under your rules? Who signs off?

## Exercise 2: Push & Review

```
Start exercise 2. Clean up spec.md, commit it, open a pull request, and wait for the review.
```

Claude takes private details out of your spec and shows it to you. If you say it is OK to share, it saves the change on a branch, opens a pull request, and waits for a review. A comment that starts with "Claude review" arrives in about 2 minutes. Claude reads it to you and offers one edit.

Why: this is how a team proposes a change and gets it reviewed before anyone accepts it.

If the review says "Clayton will check one line with you," the check found something that might be private. Clayton comes to you.

## Exercise 3: Pull & Merge

```
Start exercise 3. Pull the latest from the workshop repo and merge the best idea into my spec.
```

Claude pulls `IDEAS.md` into your branch, recommends one idea for your spec, and adds it if you agree.

Why: this is how a team builds on what everyone learned.

## Before you share

You need a personal GitHub account, not a work one. Claude helps you sign in with a one-time code. You never type a password or a token into Claude. If Claude cannot reach GitHub, pair with a neighbor who has Claude Code.

This repository is public. Anyone can read a pull request, and it stays visible after it is closed. Claude takes out names, clients, emails, links, ticket numbers, and dollar figures before you share. You check it too. Your pull request is reviewed, never merged.

Your copy of the repo (your fork) stays in your GitHub account after the workshop. You can delete it in its Settings. Your spec is yours. Paste it into your team's CLAUDE.md or project instructions.

## About the CLAUDE.md files

This repository contains a CLAUDE.md file. It holds the instructions Claude follows for the three exercises. Agents that are not Claude read `AGENTS.md`, which points to the same file. Read it first if you like.

## What is here

| Path | What it is |
|------|------------|
| `IDEAS.md` | The summary of everyone's shared specs, written by Claude |
| `CLAUDE.md` | Instructions for the agent, including what to remove before sharing |
| `AGENTS.md` | Points agents that are not Claude to the same instructions |
| `CONTRIBUTING.md` | The same rules, written for people |
| `scripts/check.sh` | A plain check for private details. It runs offline |
| `scripts/review-status.sh` | Reads the Claude review on a pull request |
| `templates/spec.md` | The shape of a spec |
| `examples/` | Three worked specs: a Jira admin hygiene report, mapping two Jira estates, and a monthly operating review |
| `.github/pull_request_template.md` | The pull request description |
| `.github/CODEOWNERS` | Requests a review from Clayton Chancey, the workshop host, on every pull request |

## License

MIT. See [LICENSE](LICENSE).
