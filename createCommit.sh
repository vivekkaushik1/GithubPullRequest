string=""
x=1
j=1
 while [ $x -le 10 ]
 do
  rm -rf random*
  touch randomfile$((j+x))
  git add .
  git commit -m 'Perfor1-1-11'
  echo $string
  eval "$string"
  x=$[$x+1]
  #sleep 1.0
  #git tag -a Pt7.$((j+x)) -m "vversion Pt1.1$((j+x))"
  #git push --tags origin
 done
git push
