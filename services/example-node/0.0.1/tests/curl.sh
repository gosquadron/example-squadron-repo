#!/bin/bash
# This is bash, but Squadron will run any executable or script (with the +x
# flag on) in the test directory.

# This is needed because Squadron will give you some data on stdin. We don't
# need that for this test.
while read line; do
    echo $line
done

RESULT=$(curl http://localhost:8888/test\?t\=5\&a\=4\&sean\=true\&b\=3\&num\=5 2>/dev/null)

if [ "$!" == "0" ]; then
    if [ "$RESULT" == "Total is 17" ]; then
        exit 0
    fi
fi
exit 1
