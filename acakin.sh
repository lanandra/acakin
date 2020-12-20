#!/bin/bash

d1=$(( $RANDOM % 10 ))
d2=$(( $RANDOM % 10 ))
d3=$(( $RANDOM % 10 ))
d4=$(( $RANDOM % 10 ))
d5=$(( $RANDOM % 10 ))
d6=$(( $RANDOM % 10 ))

c1=$(( $RANDOM % 10 ))
c2=$(( $RANDOM % 10 ))
c3=$(( $RANDOM % 10 ))
c4=$(( $RANDOM % 10 ))
c5=$(( $RANDOM % 10 ))
c6=$(( $RANDOM % 10 ))

random_number=$d1$d2$d3$d4$d5$d6
random_check=$c1$c2$c3$c4$c5$c6

echo $random_number
echo $random_check

echo "How many number would you generate ? Input here (1-10) :"
read input_number

if [ $input_number -lt 1 ] || [ $input_number -gt 10 ]
then
    echo "Wrong input"
else
    if [ $random_number -eq $random_check ]
    then
        echo "same number"
    else
        output_number=0
        echo "Your random number :"
        until [ $output_number -ge $input_number ]
        do
            echo $random_number
            output_number=$((output_number + 1))
        done
    fi
fi
