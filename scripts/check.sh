#!/usr/bin/env bash
# Check one workshop submission before it is shared in exercise 2, Open a pull request.
#
#   bash scripts/check.sh submissions/maple-42.md
#   bash scripts/check.sh FILE --as submissions/maple-42.md --files 1
#
#   --as PATH   the path the file has in the repo (use when FILE is a temp copy)
#   --files N   how many files the pull request changes (more than 1 is a BLOCK)
#   --text      check any text for private details only, with no file shape checks
#
# Plain bash and grep. No network. No install. It reports line numbers only.
# It never prints the text that matched.
#
# Exit 0: no BLOCK (WARN lines may still print). Exit 1: at least one BLOCK.
# Exit 2: usage error. The last line is always "RESULT: ...".
set -u
export LC_ALL=C

FILE="" AS="" NFILES=1 TEXT=0
while [ $# -gt 0 ]; do
  case "$1" in
    --as) AS="${2:-}"; shift 2 || exit 2 ;;
    --files) NFILES="${2:-}"; shift 2 || exit 2 ;;
    --text) TEXT=1; shift ;;
    -h|--help) sed -n '2,16p' "$0"; exit 0 ;;
    -*) echo "Unknown option: $1" >&2; echo "RESULT: ERROR"; exit 2 ;;
    *) FILE="$1"; shift ;;
  esac
done
if [ -z "$FILE" ] || [ ! -f "$FILE" ]; then
  echo "Usage: bash scripts/check.sh submissions/<name>.md" >&2
  echo "RESULT: ERROR"
  exit 2
fi
case "$NFILES" in ''|*[!0-9]*) echo "--files needs a number" >&2; echo "RESULT: ERROR"; exit 2 ;; esac

BLOCKS=0 WARNS=0
block() { echo "BLOCK $1"; BLOCKS=$((BLOCKS + 1)); }
warn() { echo "WARN  $1"; WARNS=$((WARNS + 1)); }

# lines LABEL GREP-ARGS...  prints "line N: LABEL" for each matching line, never the text.
# Returns 0 if anything matched.
lines() {
  local label="$1"; shift
  local hits
  hits="$(grep -n "$@" "$FILE" | grep -v -x -E '[0-9]+:@chanceypraecipio please review' | cut -d: -f1 | paste -s -d, - | sed 's/,/, /g')"
  [ -n "$hits" ] || return 1
  echo "line $hits: $label"
}
b() { local out; if out="$(lines "$@")"; then block "$out"; fi; }
w() { local out; if out="$(lines "$@")"; then warn "$out"; fi; }

# ---- File shape (skipped with --text) ---------------------------------------
SIZE="$(wc -c < "$FILE" | tr -d ' ')"
RULES="$(grep -c -E '^[[:space:]]*[0-9]+[.)][[:space:]]' "$FILE")"
if [ "$TEXT" = 0 ]; then
  REPO_PATH="${AS:-$FILE}"
  REPO_PATH="${REPO_PATH#./}"
  case "$REPO_PATH" in */submissions/*) REPO_PATH="submissions/${REPO_PATH##*/submissions/}" ;; esac
  NAME="${REPO_PATH##*/}"

  [ "$NFILES" -le 1 ] || block "the pull request changes $NFILES files. It should add one file."
  case "$REPO_PATH" in
    submissions/*/*) block "the file is in a subfolder. Put it straight in submissions/." ;;
    submissions/*) : ;;
    *) [ -n "$AS" ] && block "the file is outside submissions/." ;;
  esac
  echo "$NAME" | grep -q -E '^[a-z]+-[0-9]{2}\.md$' \
    || block "the file name should be one lowercase word, a hyphen, 2 digits, and .md, such as maple-42.md."

  [ "$SIZE" -le 16384 ] || block "the file is over 16 KB. Keep it to one rules file."

  [ "$RULES" -ge 1 ] || warn "no numbered rules found. Number each rule: 1. 2. 3."
fi
[ "$(tr -d '\000' < "$FILE" | wc -c | tr -d ' ')" -eq "$SIZE" ] || block "the file has binary content."

# ---- Private details (BLOCK) ------------------------------------------------
b "email address" -i -E '[a-z0-9._%+-]+@[a-z0-9-]+(\.[a-z0-9-]+)*\.[a-z]{2,}'
b "web link" -i -E 'https?://|www\.|mailto:'
b "markdown link or image" -E '\]\(|!\['
b "phone number" -E '(\+?[0-9]{1,3}[ .-]?)?\(?[0-9]{3}\)?[ .-][0-9]{3}[ .-][0-9]{4}|[0-9]{10,}'
b "handle such as @name" -E '(^|[^A-Za-z0-9._%+-])@[A-Za-z0-9_]'
b "something that looks like a secret or key" -E 'sk-ant-|sk-[A-Za-z0-9]{20,}|ghp_|gho_|ghs_|ghu_|github_pat_|glpat-|AKIA[0-9A-Z]{8,}|AIza[0-9A-Za-z_-]{20,}|xox[abprs]-|-----BEGIN'
b "HTML comment" -F '<!--'
b "HTML tag" -i -E '</?(a|abbr|b|br|code|details|div|em|font|form|h[1-6]|i|iframe|img|input|kbd|link|meta|object|p|picture|pre|s|samp|script|source|span|strong|style|sub|summary|sup|svg|table|td|th|tr|u|video|audio|embed|math|base|button|select|textarea|noscript|template)([[:space:]/>]|$)'
# Hidden characters: zero-width, bidi controls, soft hyphen, BOM, tag characters, fullwidth @.
HIDDEN=$'\xe2\x80\x8b|\xe2\x80\x8c|\xe2\x80\x8d|\xe2\x80\x8e|\xe2\x80\x8f|\xe2\x80\xaa|\xe2\x80\xab|\xe2\x80\xac|\xe2\x80\xad|\xe2\x80\xae|\xe2\x81\xa0|\xe2\x81\xa1|\xe2\x81\xa2|\xe2\x81\xa3|\xe2\x81\xa4|\xe2\x81\xa6|\xe2\x81\xa7|\xe2\x81\xa8|\xe2\x81\xa9|\xef\xbb\xbf|\xc2\xad|\xe1\xa0\x8e|\xf3\xa0\x80|\xf3\xa0\x81|\xef\xbc\xa0'
b "hidden or unusual character" -E "$HIDDEN"

# ---- Worth a second look (WARN, never public) -------------------------------
w "looks like a ticket or project key" -E '(^|[^A-Za-z0-9])[A-Z][A-Z0-9]{1,9}-[0-9]+([^0-9]|$)'
w "money figure" -i -E '[$€£][[:space:]]*[0-9]|[0-9][0-9.,]*[[:space:]]*(k|m|mm|bn)?[[:space:]]*(usd|eur|gbp|dollars)([^a-z]|$)|[0-9]+[[:space:]]*(million|billion)'
w "word that suggests private material" -i -E 'confidential|internal only|proprietary|do not share|nda([^a-z]|$)|password|api key|token'
w "looks like a web address" -i -E '[a-z0-9-]+\.(com|net|org|io|co|ai|dev|app|biz|us|uk|ca)([^a-z0-9]|$)'
w "template placeholder left in, such as <task name>" -E '<[^>]*>'

# ---- Result -----------------------------------------------------------------
if [ "$BLOCKS" -gt 0 ]; then
  echo "RESULT: BLOCK ($BLOCKS to fix, $WARNS to look at, $RULES rules)"
  exit 1
fi
echo "RESULT: PASS ($RULES rules, $WARNS to look at)"
exit 0
