# Introduction to Python - String Manipulation

# Define string variables
name1 = "Jarett"
name2 = "Jim"
name3 = 'Mary'
name4 = "Jerry 'Jer'"

# Print the types of the string variables
print(type(name1))  # <class 'str'>
print(type(name2))  # <class 'str'>
print(type(name3))  # <class 'str'>
print(type(name4))  # <class 'str'>

# Convert the string '100' to an integer
age = int('90')
print(age)

string_number = '100'
converted_number = int(string_number)
print(f"The integer value of '{string_number}' is {converted_number}.")

# Use a string method to convert 'HELLO' to 'hello'
greeting = 'HELLO'
lowercase_greeting = greeting.lower()
print(f"The lowercase version of '{greeting}' is '{lowercase_greeting}'.")

# FLOATS AND DECIMAL POINTS
# Enter a float
my_float = 5.4
print(f"The float value is: {my_float}")

# Convert a float into an integer
my_int = int(my_float)
print(f"The integer value of {my_float} is {my_int}")

# Test the truth value of the integer -5
print(f"The truth value of -5 is: {bool(-5)}")

# Convert the boolean values True and False to integer values
print(f"Integer value of True: {int(True)}")
print(f"Integer value of False: {int(False)}")

# Challenge: Evaluate the expression
result = int(5.4) + False - True + int(bool('hello'))
print(f"The result of the expression is: {result} and its type is: {type(result)}")
