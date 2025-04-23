# Functions in JavaScript

## Introduction

- Functions are a set of statements that perform a task or calculate a value. To use a function, you must define it somewhere in the scope from which you wish to call it.

- JavaScript is designed on a simple object-based paradigm. An object is a collection of properties, and a property is an association between a name (or key) and a value. A property's value can be a function, in which case the property is known as a method.

- JavaScript also supports functional programming — functions are objects, giving functions the capacity to hold executable code and be passed around like any other object.

- Functions are one of the fundamental building blocks in JavaScript. A function is a JavaScript procedure—a set of statements that performs a task or calculates a value. To use a function, you must define it somewhere in the scope from which you wish to call it.

- JavaScript functions are defined with the function keyword, and can be written as a function declaration or a function expression.

## Types of Functions

- There are several types of functions in JavaScript:

1. Function declarations
2. Function expressions
3. Arrow functions
4. Generator functions
5. Function constructors

## Function Declarations

- A function declaration (or function statement) consists of the function keyword, followed by:

1. The name of the function.
2. A list of parameters to the function, enclosed in parentheses and separated by commas.
3. The JavaScript statements that define the function, enclosed in curly brackets, {...}.

```javascript
function square(number) {
  return number * number;
}
```

## Function Expressions

- Function expressions are convenient when passing a function as an argument to another function. The following example shows a function expression that defines a function and assigns it to a variable.

```javascript
const square = function (number) {
  return number * number;
};
var x = square(4); // x gets the value 16
```

## Arrow Functions

- An arrow function expression has a shorter syntax than a function expression and does not have its own this, arguments, super, or new.target. These functions are best suited for non-method functions and they cannot be used as constructors.

- Arrow functions are always anonymous. After the arrow, there can be a block of code, as in the example above, or an expression, which will be returned.

- Arrow functions are not hoisted. They must be defined before they are used.

```javascript
const square = (number) => number * number;
var x = square(4); // x gets the value 16
```

## Generator Functions

- A generator function is a function that can stop midway and then continue from where it stopped. In short, a generator appears to be a function but behaves like an iterator.

- A generator function is defined by the function\* syntax. When called, generator functions do not execute their code. Instead, they return a special type of iterator, called a Generator.

- The code block of a generator function is executed the first time next() is called on the generator object, and then pauses. The function's code block can be executed multiple times by calling next() on the generator object.

- The yield keyword is used to pause and resume a generator function. The yield keyword halts the function and yields a value from the generator.

- The next() method is used to resume the execution of a generator function. When a value is passed to next(), it is treated as the result of the last yield expression that paused the generator.

- The return statement is used to return the given value and finish the execution of a generator.

- The throw() method is used to throw an exception from a generator.

- The generator function can be used to iterate over a range of values.

```javascript
function* generator(i) {
  yield i;
  yield i + 10;
}

const gen = generator(10);

console.log(gen.next().value); // 10

console.log(gen.next().value); // 20
```

## Assignment

- Create a function that takes two arguments and returns the sum of those arguments.

- Create a function that takes two arguments and checks if the first argument is greater than the second argument.

- Create a function that takes a number and returns the square of that number.

- Create a function that takes a number and returns the cube of that number.

- Create a function that takes a number and returns the factorial of that number.

- Create a function that takes a number and returns the Fibonacci series up to that number.

- Create a function that takes a number and returns the reverse of that number.
