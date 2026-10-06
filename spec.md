# Spec: Access review

**Goal:** A table of every account in the access export, marked keep, remove, or ask, so the system owner can decide quickly.

**Inputs:** An access export (account, role, last sign-in date, manager) and the current staff list. Sample data only until approved.

1. Match each account to the staff list by account name and flag any account with no match.
2. Flag accounts with no sign-in for 90 days or more.
3. Flag accounts whose role is higher than the manager's listed access level for that person.
4. Flag shared, generic, or service accounts for separate review.
5. Mark an account "keep" only when it matches the staff list, has recent sign-in, and the role fits.
6. Mark an account "remove" or "ask" when any flag applies, and give the reason in a few words.
7. Never remove, change, or contact anyone about an account.
8. Report counts for each result, and list any row you could not read.

**Output format:** A table with account, role, flag, suggested result (keep, remove, ask), and reason, plus a short count summary.

**Stop and ask when:** A person must decide who keeps or loses access, so never act on a suggested result without that person's decision.
