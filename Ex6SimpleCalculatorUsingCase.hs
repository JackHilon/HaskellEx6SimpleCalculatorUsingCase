

simpleCalculator::Double -> Double -> String -> IO()
simpleCalculator n1 n2 op = do
    case op of 
        "+" -> print(n1 + n2)
        "-" -> print(n1 - n2)
        "*" -> print(n1 * n2)
        "/" -> print(n1 / n2)
        _ -> print("Invalid operator!")



main = do 
    putStr("Enter first number: ")
    firstNumberAsString <- getLine
    putStr("Enter second number: ")
    secondNumberAsString <- getLine
    putStr("Enter operator (+, -, *, /): ")
    operator <- getLine
    let firstNumber = read firstNumberAsString::Double
    let secondNumber = read secondNumberAsString::Double
    simpleCalculator firstNumber secondNumber operator