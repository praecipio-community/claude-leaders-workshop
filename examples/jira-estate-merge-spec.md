# Spec: mapping two Jira estates before a merge

**Goal:** A field and workflow map that the merge team signs off before any data moves.

**Inputs:** Config exports from both sites: projects, custom fields, workflows, statuses, and schemes.

1. Match custom fields by name, type, and allowed values. Name alone is not a match.
2. For each pair, mark it "same," "merge with mapping," or "keep both."
3. Map every status in each workflow to one status in the target workflow.
4. List any status with no target. Do not invent one.
5. Flag fields that one site uses in automation, filters, or screens.
6. Give counts per project, then the 10 riskiest items first.
7. Never write to either site. This is a read-only plan.

**Output format:** One table for fields, one for statuses, then a short list of open decisions.

**Stop and ask when:** Two fields share a name but have different types, or a workflow has no clear owner.
