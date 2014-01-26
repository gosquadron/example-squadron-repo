#!/bin/bash
while read line; do        
    true                   
done                       
                        
OUTPUT=`curl http://localhost/main/test.php 2>/dev/null`
                        
if [ "$?" -eq "0" ]; then  
    if [[ $OUTPUT == *php* ]]; then
        echo "PHP not enabled"
        exit 1             
    fi                     
else                       
    echo "Couldn't connect"
    exit 1                 
fi
