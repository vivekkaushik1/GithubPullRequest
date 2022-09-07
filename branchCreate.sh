#!/bin/bash
echo hello world
x=1
y=1
j=1
while [ $x -le 100 ]
do
  echo "Welcome $x times"
  string=Gitlab_Perf_$((x-1))
  string1=Performance_Test_$((x))
  git branch $string main
  git checkout -b $string
  git push -u origin $string
  git push --set-upstream origin $string
  echo $string
  x=$(( $x + 1 ))
  sh ./createCOmmit.sh
  rm -rf random*
  git add .
  git commit -m "GitlabCommits"
  git push
  git tag -a v1.1 -m "version 1.1"
  git tag -a v2.1 -m "version 2.1"
  git push --tags origin
  git checkout main
  git merge $string
done

