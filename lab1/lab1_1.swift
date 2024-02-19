func add(_ a: Double, _ b: Double) -> Double {
  return a + b
}

func subtract(_ a: Double, _ b: Double) -> Double {
  return a - b
}

func multiply(_ a: Double, _ b: Double) -> Double {
  return a * b
}

func divide(_ a: Double, _ b: Double) -> Double? {
  guard b != 0 else {
      print("Error: Cannot divide by zero.")
      return nil
  }
  return a / b
}

func power(_ base: Double, _ exponent: Double) -> Double {
  var result = 1.0
  for _ in 1...Int(exponent) {
      result *= base
  }
  return result
}

func calculate() {
  print("Enter the first number:")
  guard let num1 = Double(readLine() ?? "") else {
      print("Invalid input. Please enter a valid number.")
      return
  }

  print("Enter the second number:")
  guard let num2 = Double(readLine() ?? "") else {
      print("Invalid input. Please enter a valid number.")
      return
  }

  print("Enter the operator (+, -, *, /, ^):")
  guard let operatorInput = readLine(), let op = operatorInput.first else {
      print("Invalid input. Please enter a valid operator.")
      return
  }

  var result: Double?
  switch op {
  case "+":
      result = add(num1, num2)
  case "-":
      result = subtract(num1, num2)
  case "*":
      result = multiply(num1, num2)
  case "/":
      result = divide(num1, num2)
  case "^":
      result = power(num1, num2)
  default:
      print("Invalid operator.")
      return
  }

  if let result = result {
      print("Result: \(result)")
  }
}

// Main function to run the calculator
func runCalculator() {
  while true {
      calculate()
      print("Do you want to perform another calculation? (yes/no)")
      guard let continueInput = readLine()?.lowercased() else {
          print("Invalid input. Exiting...")
          break
      }
      if continueInput != "yes" {
          break
      }
  }
}

runCalculator()
