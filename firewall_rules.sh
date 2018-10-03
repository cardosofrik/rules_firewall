#!/bin/bash

iptables -F -w

b1=www.asaventuraderickemorty.com #ficticio =p
b2=www.rickemorty.com # ficticio =p

rules=($b1 $b2)  
   for add  in "${rules[@]}"   
   do
   echo "Bloqueado =  $add"
  iptables -t filter -A OUTPUT -p tcp -s 192.168.0.0/24  -d $add -j REJECT
 done  
