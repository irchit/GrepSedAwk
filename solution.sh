#!/bin/bash
 grep -F "economica" | grep "Sun" | awk '{print $1}' | sort | uniq
 echo ok
 cat last.fake | grep "23:.. -" | awk '{print $1}' | sort |uniq
 echo ok
 cat passwd.fake | awk -F: '{if($3 % 7 == 0 && $1~"^m.+") print $5}'
 echo ok
 cat ps.fake | awk '{if($1 == "root") print $6}' | sort | uniq
 echo ok
 cat passwd.fake | awk -F: '{print $1":"$5}' | grep "^.\+88:" | awk -F: '{print $2}'
 echo ok
 cat passwd.fake | awk -F: '{{id=$3}{if(id ~ "23.") print $5}}'
 echo ok
 cat last.fake | awk '{if($1~"^t" && $2=="pts/9") print $1}' | sort | uniq
 echo ok
 cat ps.fake | grep -E -i "^r" | awk '{print $1}' | sed "s/[aeiou]/&&/g" | sort | uniq
 echo ok
 cat ps.fake | grep -E -i "^r" | awk '{print $1}' | sed "s/[aeiou]/&&/g" | sort | uniq
 echo sameok
 cat passwd.fake | sed -E 's/[a-zA-Z0-9 ]//g' | sort | uniq
 echo ok
 cat passwd.fake | sed -E 's/[^r]//g' | sort | uniq
 echo ok
 cat ps.fake | awk 'BEGIN{sum=0}{sum+=$2}END{print sum/NR}'
 echo ok
