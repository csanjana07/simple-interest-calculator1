#!/bin/bash

# Function to calculate simple interest
calculate_interest() {
  principal=$1
  rate=$2
  time=$3

  # Calculate simple interest
  interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
  
  # Display the result
  echo "Simple Interest: $$interest"
}

# Read user input for principal, rate, and time
read -p "Enter Principal Amount (e.g., 1000): " principal
read -p "Enter Interest Rate (e.g., 5): " rate
read -p "Enter Time Period (in years): " time

# Validate user input (optional)
if [[ ! "$principal" =~ ^[0-9]+$ || ! "$rate" =~ ^[0-9]+$ || ! "$time" =~ ^[0-9]+$ ]]; then
  echo "Invalid input. Please enter positive numbers only."
  exit 1
fi

# Call the calculate_interest function
calculate_interest $principal $rate $time

# Thank the user (optional)
echo "Thank you for using the Simple Interest Calculator!"
