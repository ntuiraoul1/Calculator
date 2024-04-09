import 'dart:io';

void main() {
  double num1, num2;
  String operation;

  // Get first number from user
  stdout.write("Enter the first number: ");
  String? input1 = stdin.readLineSync();
  if (input1 != null) {
    try {
      num1 = double.parse(input1);
    } on FormatException {
      print("Invalid input. Please enter a number.");
      return;
    }
  } else {
    print("An error occurred while reading input.");
    return;
  }

  // Get operation from user
  stdout.write("Enter the operation (+, -, *, /): ");
  operation = stdin.readLineSync() ?? ""; // Null check for empty input

  // Get second number from user
  stdout.write("Enter the second number: ");
  String? input2 = stdin.readLineSync();
  if (input2 != null) {
    try {
      num2 = double.parse(input2);
    } on FormatException {
      print("Invalid input. Please enter a number.");
      return;
    }
  } else {
    print("An error occurred while reading input.");
    return;
  }

  // Perform calculation based on operation
  double result =0.0;
  switch (operation) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 == 0) {
        print("Division by zero is not allowed.");
      } else {
        result = num1 / num2;
      }
      break;
    default:
      print("Invalid operation. Please use +, -, *, or /.");
      return;
  }

  // Print the result
  print("The result is: $result");
}


// Explanation:

// Libraries: We import dart:io to interact with standard input/output (stdin/stdout).
// Variables: We declare variables for the two numbers (num1, num2) and the operation (operation).
// User Input:
// We use stdout.write to prompt the user for input.
// We use stdin.readLineSync to read the user's input as a string.
// We convert the string to a double using double.parse within a try...catch block to handle potential format exceptions (invalid input).
// We check for null input using the null-aware operator (??) to handle unexpected errors.
// Operation Selection:
// We prompt the user for the desired operation (+, -, *, /).
// We store the user's input in the operation variable with a null check.
// Calculation:
// We use a switch statement to handle different operations.
// Inside each case, we perform the corresponding calculation and store the result.
// For division, we check for division by zero and handle it with an error message.
// Output:
// We use print to display the final result to the console.
// This program demonstrates how to take user input, perform basic arithmetic operations based on a chosen operator, and handle potential errors during input and division by zero.

