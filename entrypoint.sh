#!bin/bash

EXCLUDES=""
for artifact in $1; do
    EXCLUDES="${EXCLUDES} --exclude=${artifact}"
done

java -jar /tmp/antq/antq.jar ${EXCLUDES} --error-format="::error file={{file}}::{{message}}"

exit $?
