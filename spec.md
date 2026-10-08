# Spec: Access review

**Goal:** A table of every account in the access export, marked keep, remove, or ask, so the system owner can decide quickly.

**Inputs:** An access export (account, role, last sign-in date, manager) and the current staff list. Sample data only until approved.

1. Before any analysis, check that the export is complete and recent. Stop and report if it is not.
2. Match each account to the staff list by account name and flag any account with no match.
3. Flag accounts with no sign-in for 90 days or more.
4. Flag accounts whose role is higher than the manager's listed access level for that person.
5. Flag shared, generic, or service accounts for separate review.
6. Mark an account "keep" only when it matches the staff list, has recent sign-in, and the role fits.
7. Mark an account "remove" when it has no staff match or no sign-in for 90 days or more. Mark it "ask" for role mismatches and shared or service accounts. Give the reason in a few words.
8. Never remove, change, or contact anyone about an account.
9. Report counts for each result, and list any row you could not read.

**Output format:** A table with account, role, flag, suggested result (keep, remove, ask), and reason, plus a short count summary.

**Stop and ask when:** A person must decide who keeps or loses access, so never act on a suggested result without that person's decision.
