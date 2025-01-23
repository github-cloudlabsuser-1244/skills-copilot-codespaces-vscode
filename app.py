def add(x, y):
    return x + y

def subtract(x, y):
    return x - y

def multiply(x, y):
    return x * y

def divide(x, y):
    if y == 0:
        return "Error! Division by zero."
    return x / y

def percentage(x, y):
    if y == 0:
        return "Error! Division by zero."
    return (x / y) * 100

def calculator():
    """
    A simple calculator function that allows the user to perform basic arithmetic operations.

    The user can select from the following operations:
    1. Add
    2. Subtract
    3. Multiply
    4. Divide
    5. Percentage

    The user is prompted to enter their choice and the numbers to be operated on. The function
    handles invalid inputs and allows the user to quit by entering 'q'.

    Functions used:
    - add(num1, num2): Returns the sum of num1 and num2.
    - subtract(num1, num2): Returns the difference between num1 and num2.
    - multiply(num1, num2): Returns the product of num1 and num2.
    - divide(num1, num2): Returns the quotient of num1 and num2.
    - percentage(num1, num2): Returns the percentage of num1 with respect to num2.

    Returns:
        None
    """
    print("Select operation:")
    print("1. Add")
    print("2. Subtract")
    print("3. Multiply")
    print("4. Divide")
    print("5. Percentage")

    while True:
        choice = input("Enter choice(1/2/3/4/5) or 'q' to quit: ")

        if choice == 'q':
            print("Exiting the calculator.")
            break

        if choice in ['1', '2', '3', '4', '5']:
            try:
                num1 = float(input("Enter first number: "))
                num2 = float(input("Enter second number: "))
            except ValueError:
                print("Invalid number input. Please enter numeric values.")
                continue

            if choice == '1':
                print(f"{num1} + {num2} = {add(num1, num2)}")
            elif choice == '2':
                print(f"{num1} - {num2} = {subtract(num1, num2)}")
            elif choice == '3':
                print(f"{num1} * {num2} = {multiply(num1, num2)}")
            elif choice == '4':
                print(f"{num1} / {num2} = {divide(num1, num2)}")
            elif choice == '5':
                print(f"{num1} is {percentage(num1, num2)}% of {num2}")
        else:
            print("Invalid input")

if __name__ == "__main__":
    calculator()