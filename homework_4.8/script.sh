#!/bin/bash 

ls -AlR /home/vadim/ > /home/vadim/homework_4.8/list_hdall_4.8.1 
cat /home/vadim/homework_4.8/list_hdall_4.8.1 | sed 's/vadim vadim/usertest usertest/' > /home/vadim/homework_4.8/list_hdall_4.8.2a
cat /home/vadim/homework_4.8/list_hdall_4.8.1 | awk '{gsub(/vadim vadim/,"utest utest"); print $0;}' $file > /home/vadim/homework_4.8/list_hdall_4.8.2b
cat /home/vadim/homework_4.8/list_hdall_4.8.1 | sed '/^итого*/d' > /home/vadim/homework_4.8/list_hdall_4.8.3
cat /home/vadim/homework_4.8/list_hdall_4.8.1 | awk '{print $6,$7,$8,$9}' | sed '/^\s*$/d'  > /home/vadim/homework_4.8/list_hdall_4.8.4
cat /home/vadim/homework_4.8/list_hdall_4.8.1 | awk '{print $9}' | grep '[0-9]' > /home/vadim/homework_4.8/list_hdall_4.8.5
cat /home/vadim/homework_4.8/list_hdall_4.8.1 | awk '{print $9}' | grep '[0-9]' |  grep '[a-z]\{3\}' > /home/vadim/homework_4.8/list_hdall_4.8.6
