# Contributing

This repository is a shared workspace for three workshop exercises: Pull & Spec, Push & Review, and Pull & Merge. These are the same rules the agent follows, written for people.

1. Write one `spec.md` for one task your team repeats. Start from `templates/spec.md`. See `examples/` for the shape.
2. Remove anything private. The list is in [CLAUDE.md](CLAUDE.md), under "What to remove before sharing."
3. Run `bash scripts/check.sh spec.md --as spec.md --files 1`.
4. Join the repo (open an issue titled "Join" or star it, then accept the invitation). Commit only `spec.md`, at the top of the repo, on a branch named `spec/` plus one lowercase word and 2 random digits, such as `spec/variance-37`. Change no other file.
5. Open a pull request with `@chanceypraecipio please review` in the description.

The repository is public. Anyone can read a pull request, and it stays visible after it is closed. Pull requests are reviewed, not merged. Only `IDEAS.md` is merged, by the workshop host.

By opening a pull request you agree your file is shared under the MIT License.
