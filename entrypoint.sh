#!bin/bash

echo $#
echo $@

java -jar /tmp/antq/antq.jar --error-format="::error file={{file}}::{{message}}"
