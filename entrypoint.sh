#!bin/bash

EXCLUDES=""
for artifact in $1; do
    EXCLUDES="${EXCLUDES} --exclude=${artifact}"
done

DIRECTORIES=""
for directory in $2; do
    DIRECTORIES="${DIRECTORIES} --directory=${directory}"
done

SKIPS=""
for skip in $3; do
    SKIPS="${SKIPS} --skip=${skip}"
done

java -jar /tmp/antq/antq.jar ${EXCLUDES} ${DIRECTORIES} ${SKIPS} --error-format="::error file={{file}}::{{message}}"

exit $?
