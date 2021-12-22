#!/bin/bash

NOW=`date '+%F_%H:%M:%S'`

reveal-md --static ~/git/malis21/slides ~/git/malis21/slides-md --theme blood
cd ~/git/malis21
git stash --include-untracked
git checkout pages
git stash pop
git add .
git ci -m "Publish build from $NOW"
git push origin pages
git checkout main