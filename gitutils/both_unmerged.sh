#! /usr/bin/env bash

for branch in `comm -12  <(git branch --no-merged|awk '{print($1)}') <(git branch -r --no-merged|awk '{print($1)}'|awk -F \/ '{print($2)}')`;
    do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch;
done | sort -r
