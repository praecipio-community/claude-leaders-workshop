# Spec: weekly CAB change summary

**Goal:** One summary of the week's change requests that the change advisory board (CAB) reads before its meeting.

**Inputs:** An export of change tickets due for this week's CAB, with type, risk, systems affected, planned window, rollback plan, test evidence, and requester role.

1. Include only tickets marked for this week's CAB. Leave out drafts and changes already approved.
2. Group the changes by type: standard, normal, and emergency.
3. For each change, write one line: what changes, which systems, the planned window, and the risk level.
4. Flag any change with no rollback plan, no test evidence, or no planned window as "incomplete."
5. Flag changes that touch the same system in overlapping windows as "conflict."
6. Flag changes planned inside a freeze period as "freeze."
7. List high-risk changes first within each group.
8. Use the risk level in the ticket. Do not raise or lower it.
9. Do not recommend approve or reject. The board decides.
10. Use roles, not names, for requesters and owners.

**Output format:** A short table per change type, then a list of flagged changes with the reason for each flag.

**Stop and ask when:** A change needs an approve or reject call. That decision stays with the board.
