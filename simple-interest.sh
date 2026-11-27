#!/bin/bash
# Simple Interest Calculator
# Formula: Simple Interest = (P * R * T) / 100

echo "Simple Interest Calculator"
echo "--------------------------"

# Take user input for principal
echo -n "Enter Principal amount: "
read principal

# Take user input for rate of interest
echo -n "Enter Rate of Interest: "
read rate

# Take user input for time period
echo -n "Enter Time Period in years: "
read time

# Calculate Simple Interest using formula P * R * T / 100
# bc is used because bash cannot do decimal calculation
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Show result
echo "--------------------------"
echo "Principal: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $simple_interest"
echo "Total Amount: $total_amount"
