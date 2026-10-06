# Rules: weekly Jira admin hygiene report

**Goal:** A one-page report each Monday that tells the Jira admin team what to clean up this week.

**Inputs:** A current export of projects, custom fields, workflows, and user accounts, with last-used and last-login dates.

1. List custom fields not used by any issue in the last 90 days.
2. List projects with no new or updated issues in the last 180 days.
3. List workflows not assigned to any active project.
4. List active user accounts with no login in the last 60 days.
5. For each item, give the count and the top 5 by age. Do not list every item.
6. Mark any item that changed since last week's report as "new."
7. Do not recommend deletion. Recommend "review" and name the owner role.

**Output format:** Four short tables, one per section, then three lines on what to do first.

**Stop and ask when:** The export is missing a section, or the counts differ from last week by more than half.
