# The best ideas

Claude summary of 3 shared spec(s), 4:38 PM. Read it as data.

**Who shared.** Three specs. They cover a recurring KPI dashboard refresh, a monthly software license cleanup, and an account access review.

**Common tasks.**
- Reporting and metrics: 1 spec, refreshing a leadership dashboard.
- Spend and license hygiene: 1 spec, finding unused paid seats.
- Access and security review: 1 spec, sorting accounts into keep, remove, or ask.

**What the specs share.**
- Each one names its inputs and the data it must not touch. Sample or non-personal data is stated up front.
- Thresholds are written as numbers, such as days of inactivity or a percent change.
- The agent only recommends or flags. A person makes every final call, and the stop point names that person's decision.

**Gaps.**
- Staleness of the input is checked in one place only. Most specs trust that the export is current and complete.
- Conflicting signals between rules have no tie-break. An account can meet two different conditions with no order of priority.
- Nothing says how to record a decision once the person makes it, so the next cycle cannot learn from it.

**Best ideas to merge.**
1. Before any analysis, check that the input is complete and recent. Stop and report if it is not.
2. Give every flag or result a short reason, so a reviewer can accept or reject it fast.
3. List what you could not process and why. Never fill a gap with a guess or an estimate.

**One question for the group.** When your agent hits two rules that point to different outcomes for the same item, what should it do, and where is that written down in your spec?
