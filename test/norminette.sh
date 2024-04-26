#!/bash/sh
STAGED_FILES=$(git diff --cached --name-only --diff-filter=ACMR | sed -i 's| |\\ |g')

echo "Running norminette..."
norminette $STAGED_FILES
NORM_EIXT_CODE=$?

if [ $NORM_EIXT_CODE -ne 0 ]; then
	echo "There is norminette error..."
	exit 1
fi
echo "There is no norminette error, perfect!"
exit 0
