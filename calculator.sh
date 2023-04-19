#!/usr/bin/bash

echo -e "\nWelcome to the calculator! \n"

echo -e "Please choose an operation: \n"

echo "1 - Addition"
echo "2 - Subtraction"
echo "3 - Multiplication"
echo "4 - Division"
echo "5 - Modulus"
echo "6 - Power"

echo -e "\nEnter (1-6): \c"
read operation

if [ $operation -lt 1 -o $operation -gt 6 ]

then
    echo -e "\nInvalid operation! \n"
    exit
fi

echo -e "\nEnter number 1: \c"
read number1

echo -e "Enter number 2: \c"
read number2

if [ $operation -eq 1 ]

then
    echo -e "\nResult: \c"
    echo "scale=3;$number1+$number2" | bc

 elif [ $operation -eq 2 ]

then
    echo -e "\nResult: \c"
    echo "scale=3;$number1-$number2" | bc

elif [ $operation -eq 3 ]

then
    echo -e "\nResult: \c"
    echo "scale=3;$number1*$number2" | bc

elif [ $operation -eq 4 ]

then
    echo -e "\nResult: \c"
    echo "scale=3;$number1/$number2" | bc

elif [ $operation -eq 5 ]

then
    echo -e "\nResult: \c"
    echo "$number1%$number2" | bc

else
    echo -e "\nResult: \c"
    echo "scale=3;$number1^$number2" | bc -l

fi

echo ""
