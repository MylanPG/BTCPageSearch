#!/bin/bash

for ((i=1; i<=10000000; i+=1)) ; do
  p1=$(shuf -i 204963823041217241-409927646082434481 -n1)
  page=$p1
  webserv="https://privatekeys.pw/keys/bitcoin/$page"

  key="16jY7qLJnxb7CHZyqBP8qca9d51gAjyXQN"

   if curl -s "$webserv" | grep "$key"
    then
      echo $webserv > text.txt
    else
      echo $page
   fi
done
