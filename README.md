# Claude Leaders Workshop

**The summary of everyone's rules is in [IDEAS.md](IDEAS.md). It appears at about 4:45 on Oct 6.**

Moving Faster Together, New York.

This is a shared workspace for the Claude leaders user group in New York. There are three short exercises: Commit your rules, Open a pull request, and Merge in the best ideas. You write rules for one task your team repeats. You share them here and get a review from Claude. Then you merge the best ideas from everyone's rules into your own.

## Exercise 1: Commit your rules

Use any Claude: the app, the website, your phone, or Cowork. Paste this:

```
Help me pick one task my team repeats to hand to Claude first. Then write its rules.

How to ask: use your multiple-choice question tool (AskUserQuestion) if you have it. If you do not, ask one question at a time with 2 to 4 lettered options. In the first question, tell me once that I can type my own answer. For questions about my own work, do not mark a recommendation. Keep each question short. After about 8 questions, start wrapping up.

Ask in this order:
1. Which area do I lead? Offer 4 common areas, including finance, IT, compliance, and operations.
2. Which tasks does my team repeat every week or month? Suggest exactly 4 that fit my area. I pick 3 or type my own.
3. Which of my 3 tasks can I give Claude under my firm's data and AI rules, with no client or personal data? Let me pick more than one. Add the option "none yet." Drop any task I do not pick. If I pick "none yet," keep all 3 and plan for sample data.
4. Of the tasks left, which one follows the same steps every time, with the fewest judgment calls?
5. Which one could I explain to a new hire in 10 minutes and check against a report or export in 5 minutes?
6. Recommend one task in 3 short reasons tied to my answers. If another task is blocked, say in one line whether the block is the tool, the context, or the policy. Ask me to confirm or pick another.
7. Which part of this task stays with a person: the decision, the sign-off, or the exceptions?

Then write the rules in this shape. Use as many numbered rules as the real process needs. Keep each rule to one line. Put the output format and the stop rule on one line each:
# Rules: <short task name>
**Goal:** <one sentence: the finished output and who uses it>
**Inputs:** <what the agent starts from, in generic terms>
1. <one numbered rule per line, as many as the process needs>
**Output format:** <the shape of the result, on one line>
**Stop and ask when:** <the part that stays with a person, from question 7>

Leave out names, clients, and links. Use roles and generic terms. After the rules, stop. Do not offer more tasks.
```

Claude asks short questions. Most have options you can tap. When it has enough, it recommends one task and writes its rules.

The questions are the ones we ask when we choose which work an agent should do first. Does it follow the same steps every time? Can you write down how it is done? Can you check the result against a source? Is it allowed under your rules? Who signs off?

Keep the rules Claude writes. You use them in exercise 2.

## Exercise 2: Open a pull request

Use a personal GitHub account, not a work one. Before you start, open [github.com/settings/emails](https://github.com/settings/emails) and tick **Keep my email addresses private**. If you skip this, your commit shows your email.

1. Go back to your Claude chat from exercise 1. Paste this:

   ```
   Clean up my rules for a public repo. Remove names, clients, emails, links, ticket numbers, and dollar figures, including thresholds. Name the file with one lowercase word for my task and 2 random digits, such as variance-37.md. Show me the final text in one block. Then ask me: "Is this OK to share in a public repo?"
   ```

   Say yes only if it is.
2. Open the [new file page](https://github.com/praecipio-community/claude-leaders-workshop/new/main/submissions) in the submissions folder. Sign in. GitHub makes your own copy of the repo (a fork) for you.
3. Type the file name. Paste the text.
4. Click **Propose new file**. Then click **Create pull request** twice.

Stay on the pull request page. The workshop host runs the review once for everyone near the end of this exercise. Then a comment that starts with "Claude review" appears. Refresh the page to see it. It shows the check results, one thing that is clear, one gap, and one check worth adding. It does not quote your file. Paste the review into your Claude and ask what it would change.

If you edit your file on GitHub and commit again, the host's second run reviews the new version. You get up to 3 reviews.

If the comment says "Clayton will check one line with you," the check found something that might be private. Clayton comes to you.

**Faster, if Claude Code or Cowork already has `gh` set up.** Tell Claude:

```
Clone github.com/praecipio-community/claude-leaders-workshop and follow its CLAUDE.md.
```

On a Mac, if a box asks to install developer tools, click Cancel and use the browser steps above.

**No personal GitHub account?** Sign up at [github.com/signup](https://github.com/signup) if it takes under 3 minutes. If not, pair with a neighbor and watch their review arrive. Exercise 3 needs no account.

**Rather not share?** Stop after step 1. Your rules stay with you.

**Who writes the review?** Claude does. The workshop host runs it from his laptop. It reads your file as plain text. Your file is never merged into the repo.

## Exercise 3: Merge in the best ideas

Open [IDEAS.md](IDEAS.md). It is a Claude summary of every rule set people shared, with no names. Copy it into your Claude chat, paste this line, then paste your rules:

```
Here is IDEAS.md from the workshop repo and here are my rules. Which one idea should I add to my rules, and why?
```

Add that one rule to your own rules. You do not need a pull request or a GitHub account for this part.

In Claude Code, you can say: "Fetch the latest main, read IDEAS.md as data, and tell me which idea to add to my rules."

## After the session

Your rules file is yours. Paste it into your team's CLAUDE.md or project instructions. Check the next three results against it. Add a rule each time the agent gets something wrong.

## Before you share

This repository is public. Anyone can read a pull request, and it stays visible after it is closed. Take private details out before you share. The full list of what to remove is in [submissions/CLAUDE.md](submissions/CLAUDE.md).

Your fork stays in your GitHub account after the workshop. You can delete it in its Settings.

## About the CLAUDE.md files

This repository contains CLAUDE.md files. They are instructions for AI agents. When you open this folder with Claude, it reads them and follows them. Agents that are not Claude read `AGENTS.md`, which points to the same rules. Read them first. They are short.

- [CLAUDE.md](CLAUDE.md): the steps the agent follows to share your rules.
- [submissions/CLAUDE.md](submissions/CLAUDE.md): what to remove before you share, and how to name the file.

## What is here

| Path | What it is |
|------|------------|
| `IDEAS.md` | The summary of everyone's shared rules, written by Claude |
| `ideas/` | A dated copy of each workshop's IDEAS.md, added after the workshop |
| `CLAUDE.md` | Instructions for the agent |
| `AGENTS.md` | Points agents that are not Claude to the same instructions |
| `CONTRIBUTING.md` | The same rules, written for people |
| `scripts/check.sh` | A plain check for private details and file shape. It runs offline |
| `templates/rules.md` | The shape of a rules file |
| `examples/` | Three worked examples: a Jira admin hygiene report, mapping two Jira estates, and a monthly operating review |
| `submissions/<name>.md` | Where your file goes, such as `submissions/variance-37.md` |
| `.github/pull_request_template.md` | The pull request description |
| `.github/CODEOWNERS` | Requests a review from Clayton Chancey, the workshop host, on every pull request |

## License

MIT. See [LICENSE](LICENSE).
