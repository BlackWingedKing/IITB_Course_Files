#!/bin/bash

# remove the 1.txt file
rm -r 1.txt

names='../instances/i-1.txt ../instances/i-2.txt ../instances/i-3.txt'
als='round-robin epsilon-greedy ucb kl-ucb thompson-sampling'
eps='0.002 0.02 0.2'
hz='50 20 800 3200 12800 51200 204800'
rs='0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49'
counter=0

for name in $names
do
    for al in $als
    do
        for h in $hz
        do
            for r in $rs
            do
                if [ "$al" == "epsilon-greedy" ]
                then
                    for ep in $eps
                    do
                        ./bandit.sh --instance $name --algorithm $al --randomSeed $r --epsilon $ep --horizon $h >> 1.txt
                        # counter=$((counter+1))
                    done
                else
                    ./bandit.sh --instance $name --algorithm $al --randomSeed $r --epsilon 0.1 --horizon $h >> 1.txt
                    # counter=$((counter+1))
                fi
            done
        done
    done
done
echo $counter