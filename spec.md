# Spec: weekly patch status check

**Goal:** A weekly list of devices that are overdue on patches, which the IT team lead reviews and signs off.

**Inputs:** A current export from the device management tool listing each device, its installed patches, and its last check-in date. Patch release dates come from the patch management tool's catalog.

1. Read every device in the export once. Do not add devices that are not in the export.
2. For each device, list each released patch it has not installed.
3. Mark a patch overdue when its catalog release date is more than 7 days ago and the device has not installed it.
4. Mark a device overdue when it has at least one overdue patch.
5. For each overdue device, give the device name, the overdue patches, and the days overdue for the oldest one.
6. Sort overdue devices by the oldest overdue patch first.
7. Give a count of overdue devices and the total devices checked.
8. Skip any device with missing or conflicting data and list it in a separate section with the reason.
9. Do not install, schedule, or change anything. This is a read-only report.
10. Leave exceptions and the sign-off to the team lead. Do not mark any device as an approved exception.

**Cutoffs:** A patch is overdue 7 days after its release date.

**When data is missing, late, or conflicting:** Skip that device, list it with the reason, and keep going with the rest.

**Output format:** A count line, a table of overdue devices sorted by oldest overdue patch, and a list of skipped devices.

**Stop and ask when:** Two rules point to different results for the same device; the team lead decides exceptions and signs off the report.
