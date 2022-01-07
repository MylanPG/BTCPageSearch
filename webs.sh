#!/bin/bash

p1=204963823041217241
p2=409927646082434481

for ((page=$p2; page>=$p1; page-=$RANDOM)); do
  webserv="https://privatekeys.pw/keys/bitcoin/$page"

  key="16jY7qLJnxb7CHZyqBP8qca9d51gAjyXQN"

   if curl -s "$webserv" | grep "$key"
    then
      echo $webserv > found.txt
    else
      echo $page
   fi
done

