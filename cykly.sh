#!/bin/bash

# projde a vypíše všechny scripty ve složce
path="/home/student/scripts/*"
for i in $path; do
  echo "$i"
done

# vypíše jednotlivé barvy do konzole
colors=("červená" "zelená" "modrá" "žlutá")
for i in "${colors[@]}"; do
  echo "$i"
done

# for cyklus pomocí indexů (java like)
for ((i = 0; i < 10; i++)); do
  echo "$i"
done

for ((i = 10; i > 0; i--)); do
  echo "$i"
done

echo -e "\n --for loop from 10 to 20 --\n"

#  definice rozsahu hodnot (od 10 do 20)
for i in {10..20}; do
  echo "$i"
done

#  definice rozsahu hodnot (od 10 do 20 s krokem 2  10,12,14,...,20)
echo -e "\n --for loop from 10 to 20 step 2--\n"
for i in {10..20..2}; do
  echo "$i"
done

## while nekonečný cyklus
#while true; do
#  echo "stále běží..."
#  sleep 1
#done
#echo "sem se nikdy nedostaneme :-)"
#
## until nekonečný cyklus (until se provádí dokud podmínka NEPLATÍ)
#until false; do
#  echo "stále běží..."
#  sleep 1
#done
#echo "Sem se opět nikdy nedostaneme"

counter=1
while [[ $counter -lt 10 ]]; do
  echo "while $counter"
  ((counter++))
done




