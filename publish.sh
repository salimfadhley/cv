#!/usr/bin/env bash
if [ -n "$GITHUB_API_KEY" ]; then
    cd out
    # This generates a `web` directory containing the website.
    cd out
    git init
    git checkout -b gh-pages
    git add .
    git -c user.name='salimfadhley' -c user.email='salimfadhley@gmail.com' commit -m init
    git push -f -q https://salimfadhley:$GITHUB_API_KEY@github.com/salimfadhley/cv.git gh-pages &2>/dev/null
    echo "Pushed to GitHub."
else
    echo "GITHUB_API_KEY not set"
fi