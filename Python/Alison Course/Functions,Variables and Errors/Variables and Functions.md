# Variables and Functions by Jarett Rezz

- Variable: Placeholders for values
- Enter a variable name that adheres to the python naming convention
- Function: Changes or evaluates the values given as arguments before returning the new values.
- Function parameters: Variables that are defined in the function definition and receive values when the function is called.
- Return statement: Used to exit a function and send a value back to the caller.

- Functions are used for tasks,actions, or code that are repeated. (DRY)
- def: defining a function and name it by following the naming convention.
  - Example: `def add(a, b): return a + b`

 1. Lowercase: separated by underscore
 2. MixedCase: Where there is prevailing style

## Storing Values rules
 1. Use lowercase letters to declare variables
 2. Separate words with underscores
 3. Cannot start with a number
 4. No special characters(except underscores)

- String concatenation: combining strings with the (+) operator.
- Example: `full_name = first_name + " " + last_name`

- Case sensitive: Python is case sensitive to upper and lower case letters.

### Comparing variables with operators
- Comparison operators: Used to compare two values.
  - Examples: `==`, `!=`, `<`, `>`, `<=`, `>=`
- Logical operators: Used to combine conditional statements.
  - Examples: `and`, `or`, `not`


- Math Operators: Used to perform arithmetic operations.
  - Examples: `+`, `-`, `*`, `/`, `//`, `%`


### Basic Expressions
# Basic Expressions in Python

- An **expression** is a combination of values, variables, and operators that Python interprets and evaluates to produce a result.

## Arithmetic Expressions
Used for mathematical operations:

```python
a = 10
b = 3

sum_result = a + b      # Addition → 13
diff_result = a - b     # Subtraction → 7
prod_result = a * b     # Multiplication → 30
quot_result = a / b     # Division → 3.333...
floor_result = a // b   # Floor division → 3
mod_result = a % b      # Modulus → 1
exp_result = a ** b     # Exponentiation → 1000
````
## Comparison Expressions
- Used to compare values, returning True or False:
```Python
x = 5
y = 10

print(x > y)   # False
print(x < y)   # True
print(x == y)  # False
print(x != y)  # True
print(x >= y)  # False
print(x <= y)  # True
````
## Logical Expressions
- Used for boolean operations:
```Python
a = True
b = False

print(a and b)  # False
print(a or b)   # True
print(not a)    # False
```
## Assignment Expressions
 - Used to assign values to variables:
```Python
x = 10  # Assigns 10 to x
x += 5  # Equivalent to x = x + 5
x -= 3  # Equivalent to x = x - 3
x *= 2  # Equivalent to x = x * 2
x /= 4  # Equivalent to x = x / 4
```
## Identity and Membership Expressions
- Used to check object identity and membership:
```
a = [1, 2, 3]
b = a
c = [1, 2, 3]

print(a is b)   # True (same object)
print(a is c)   # False (different objects with same content)
print(a == c)   # True (same values)

print(2 in a)   # True (2 is in the list)
print(5 not in a)  # True (5 is not in the list)
```