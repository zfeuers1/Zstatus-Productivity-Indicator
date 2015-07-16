#!/bin/bash
command=$1
if [ "$command" = "off" ]; then
    ruby /Users/zfeuerstein/Documents/scripts/zstatus/status.rb 3
elif [ "$command" = "busy" ]; then
    ruby /Users/zfeuerstein/Documents/scripts/zstatus/status.rb 2
elif [ "$command" = "available" ]; then
    ruby /Users/zfeuerstein/Documents/scripts/zstatus/status.rb 1
else 
    echo "invalid command: (busy, available, off)"
fi
