#!/bin/bash
./stats.sh  # Run stats script before Jekyll starts
jekyll serve --livereload &

# Watch for changes and rerun stats.sh
while inotifywait -e modify,create,delete -r .; do
    ./stats.sh
done
