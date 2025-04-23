# Question 1: Check if a string behaves like an array
print("Question 1")
str_var = "pynative"
print(str_var[1:3])  # Output: 'yn'

# Question 2: List comparison
print("\nQuestion 2")
listOne = [20, 40, 60, 80]
listTwo = [20, 40, 60, 80]

print(listOne == listTwo)  # Output: True (same values)
print(listOne is listTwo)  # Output: False (different memory locations)

# Question 3: String slicing in reverse
print("\nQuestion 3")
var = "James Bond"
print(var[2::-1])  # Output: 'maJ'

# Question 4: Variable scope and function
print("\nQuestion 4")
salary = 8000

def printSalary():
    salary = 12000
    print("Salary:", salary)  # Output: 12000 (local variable)

printSalary()
print("Salary:", salary)  # Output: 8000 (global variable)

# Question 5: Range function with a step of 1
print("\nQuestion 5")
for i in range(10, 15, 1):
    print(i, end=', ')  # Output: 10, 11, 12, 13, 14,
print()  # For new line

# Question 6: Function with a default parameter
print("\nQuestion 6")
def calculate(num1, num2=4):
    res = num1 * num2
    print(res)

calculate(5, 6)  # Output: 30
calculate(5)     # Output: 20 (uses default num2=4)

# Question 7: Set operations
print("\nQuestion 7")
sampleSet = {"Jodi", "Eric", "Garry"}
sampleSet.add("Vicki")  # Correct way to add a single element
print(sampleSet)  # Output: {'Jodi', 'Eric', 'Garry', 'Vicki'}

# Question 8: Type error demonstration and fix
print("\nQuestion 8")
var1 = 1
var2 = 2
var3 = "3"

# print(var1 + var2 + var3)  # ❌ TypeError: Can't add int and str

# Corrected versions
print(var1 + var2 + int(var3))  # Output: 6
print(str(var1) + str(var2) + var3)  # Output: '123'

# Arguments
## Positional Argument
print("\nQuestion 9")
def add (x,y):
    total = x + y
    return total
print(add(2,5))
## Keyword Argument
print("\nQuestion 10")
def add (x,y):
    total = x + y
    return total
print(add(x=2,y=5))
# Functions within a function
print("\nQuestion 11")
def outer_function():
    def inner_function():
        return "Hello, I am inner function"
    return inner_function()
print(outer_function())  # Output: Hello, I am inner function
"""This is a string literal"""

# YOUR NEW LUCKY NUMBER

# TODO: Save user input name to variable
user_name = input('Please enter your lucky name: ')
# TODO: Save user input number to variable
user_number = input('Please enter your number: ')
# TODO: Convert the user number using the math operator to get the users new lucky number and save to a variable
user_fav_number = int(user_number) 

# TODO: Usng a f-string, print the users name and lucky number to console.
print(f'Your name is {user_name} and your lucky number is {user_fav_number}')

