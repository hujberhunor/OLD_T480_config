#!/bin/bash

CPU=$(top -bn1 | grep "Cpu(s)" | \
           sed "s/.*, *\([0-9.]*\)%* id,*/\1/" | \
           awk '{print 100 - $1"%"}')
MEM=$(free -t | awk 'NR == 2 {printf "%.2f%\n", $3/$2*100}')
echo CPU $CPU \| MEM $MEM
