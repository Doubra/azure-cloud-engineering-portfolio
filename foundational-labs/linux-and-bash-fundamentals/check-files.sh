
#!/bin/bash

status=0

for file in app.conf network.conf
do
    if [ -f "$file" ]; then
        echo "$file: FOUND"
    else
        echo "$file: MISSING"
        status=1
    fi
done

exit "$status"
