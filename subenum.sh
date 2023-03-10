#!/bin/bash

if [ -z $1 ]
then
        echo './subenum.sh <list of domains>'
        exit 1
fi

#Subdomain Enumeration
echo 'FINDING SUBDOMAINS...'

while read line
do
        for var in $line
        do
                echo 'enumerating:' $var

                subfinder --silent -d $var > out1
                cat out1 >> subs1

                assetfinder -subs-only $var > out2
                cat out2 >> subs2

                rm out1 out2
        done
done < $1

sort -u subs1 subs2 > all_subs
rm subs1 subs2
echo 'saved subdomains to all_subs'

#working with http or https server
echo 'FINDING LIVE HOSTS...'

cat all_subs | httprobe > live_subs
echo 'saved live hosts to live_subs'

echo 'DONE'
