# Spec: monthly SaaS license cleanup

**Goal:** A monthly list of SaaS licenses that look unused, so the IT systems team can decide which to reclaim before renewals.

**Inputs:** A current export from the SaaS management tool with app name, license type, assigned user role, assignment date, and last-active date per license. Sample data only until approved.

1. Confirm the export covers every app in scope and is less than 7 days old; if not, stop.
2. Flag licenses with no activity in the last 90 days as "reclaim candidate."
3. Flag licenses with activity only in the last 60 to 90 days as "watch."
4. Skip licenses assigned in the last 30 days; new users may not have started yet.
5. Skip shared, service, and admin accounts; list them separately for review.
6. Flag users holding a paid tier who use only free-tier features as "downgrade candidate."
7. For each app, give total licenses, candidates, and percent unused.
8. Sort apps by number of reclaim candidates, highest first.
9. Mark any candidate that also appeared last month as "repeat."
10. Do not remove, downgrade, or change any license; recommend only, and name the app owner role.
11. Use roles and license IDs, not personal names, in the output.

**Output format:** One summary table by app, then one table of candidates (app, license ID, tier, last active, flag), then three lines on where to start.

**Stop and ask when:** It is time to decide which licenses to reclaim (a person always decides), the export looks incomplete, or more than half of an app's licenses look unused.
