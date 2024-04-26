#!/bash/sh
STAGED_FILES = $(git diff --cached --name-only --diff-filter=ACMR | sed 's| |\\ |g')

echo "Running Test"
exit 1