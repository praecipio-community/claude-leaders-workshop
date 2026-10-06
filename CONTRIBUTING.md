# Contributing

This repository is a shared workspace for three workshop exercises: Commit your rules, Get a Claude review, and Merge in the best ideas. These are the same rules the agent follows, written for people.

1. Write one rules file for one task your team repeats. Start from `templates/rules.md`. Keep 15 numbered rules or fewer. See `examples/` for the shape.
2. Remove anything private. The list is in [submissions/CLAUDE.md](submissions/CLAUDE.md).
3. Name the file with one lowercase word, a hyphen, and 2 digits, such as `maple-42.md`.
4. Add it as `submissions/<name>.md` and open a pull request. The easy way is in `README.md` exercise 2. Change no other file.
5. If you can run bash, run `bash scripts/check.sh submissions/<name>.md` first.

The repository is public. Anyone can read a pull request, and it stays visible after it is closed. Pull requests are reviewed, not merged.

By opening a pull request you agree your file is shared under the MIT License.
