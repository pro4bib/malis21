#!/bin/bash

reveal-md --static ~/git/malis21/slides ~/git/malis21/slides-md --theme blood
cd ~/git/malis21
git stash --include-untracked
git checkout pages
git stash pop
git add .
git ci -m "Publish build from ${CURRENTEPOCTIME}"
git checkout main