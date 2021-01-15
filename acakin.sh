#!/bin/bash

#remove if any existing or previous print_number.txt
rm -rf ./print_number.txt

#get user input
echo "How many number would you generate ? Input here (1-100) :"
read input_number

#check condition if user input is correct
if [ $input_number -lt 1 ] || [ $input_number -gt 100 ]
then
    echo "Wrong input"
else
    #generate random number and print to txt file
    output_number=0
    echo "Your random number :"
    while [ $output_number -lt $input_number ]
    do
        d1=$(( $RANDOM % 10 ))
        d2=$(( $RANDOM % 10 ))
        d3=$(( $RANDOM % 10 ))
        d4=$(( $RANDOM % 10 ))
        d5=$(( $RANDOM % 10 ))
        d6=$(( $RANDOM % 10 ))
        random_number=$d1$d2$d3$d4$d5$d6
        echo $random_number | tee -a print_number.txt
        output_number=$((output_number + 1))
    done
fi
