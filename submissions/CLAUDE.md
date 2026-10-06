# Submissions folder rules

This is the one list of what to remove before sharing. It applies to any agent, Claude or not, and to people sharing by hand. `README.md`, `CONTRIBUTING.md`, and the root `CLAUDE.md` point here.

## The file

- One file per person: `submissions/<name>.md`. No subfolders. No other files.
- The name is one lowercase word for the task, a hyphen, and 2 random digits, such as `variance-37.md`. It is not a person's name, an employer, a client, or a GitHub login.
- One numbered rule per line, as many as the process needs. Under 16 KB. Delete the template comment.
- Do not edit anyone else's file.

## Remove before sharing

Replace these with a role or a generic term:

- Person names. Write "the team lead" or "an analyst."
- Client or employer names. Write "the client" or "our company."
- Internal system names, server names, and project codes. Write "the ticketing tool" or "the CRM."
- Ticket keys and project keys, such as `ABC-123`. Common acronyms such as CAB, ITSM, and CRM are fine.
- Dollar figures of any kind, including thresholds, budgets, and contract values. Write "the agreed threshold" or "the budget" instead.

Delete these:

- Email addresses and phone numbers.
- Links and web addresses, including internal links.
- Handles, such as `@name`.
- Passwords, API keys, tokens, and any other secret.
- HTML, comments, and hidden characters.

Public product names are fine, such as Jira, Excel, or Salesforce. A product plus your own instance or project name is not. When in doubt, take it out.

The task name goes into the commit message and the pull request title. Clean it the same way.

## Check before commit

Run `bash scripts/check.sh submissions/<name>.md`. Fix every BLOCK line. Ask the attendee about every WARN line. The check cannot catch names of people, clients, or systems, so read the file line by line too. Then show the attendee the final file and get their OK.

The one line `@chanceypraecipio please review` stays in the pull request description.
