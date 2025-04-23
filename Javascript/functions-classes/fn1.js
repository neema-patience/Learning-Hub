// function to get the sum of two numbers

//  function declaration
function sum(a, b) {
  // must have a 'function' keyword, a 'functionName' and optionally, 'parameters'
  // write logic here -> codeblock
  console.log(`The sum of ${a} and ${b} is ${a + b}`);
}

// call the function
sum(10, 20);
sum(30, 40);
sum(50, 60);
sum(70, 80);
sum(90, 100);

function sumOfTwoNums() {
  let number1 = 10;
  let number2 = 20;

  let sum = number1 + number2;

  console.log(`The sum of ${number1} and ${number2} is ${sum}`);
}

sumOfTwoNums();
// Arrow Functions
// let sumOfTwoNums = ()

let books = [
  {
    title: "The Alchemist",
  },
  {
    title: "The Monk who sold his Ferrari",
  },
  {
    title: "The Subtle Art of Not Giving a F*ck",
  },
];

function printBooks(books){
    return books;
    console.log(books[0]);
    console.log(books[1]);
    console.log(books[2]
    )
}

printBooks(books);

let numberOfBooks = books.length;
console.log(`The number of books in the library is ${numberOfBooks}`);

function listBooks() {
  for (let i = 0; i < books.length; i++) {
    // return(books[i]);
    console.log(`books found: ${books[i]}`);
  }
}
listBooks();


function listBooksByTitle(title){
    for (let i = 0; i < books.length; i++) {
        if(books[i].title === title){
            console.log(books[i]);
        } else{
            console.error("Book not found");
        }
    }
}

// listBooksByTitle("The Alchemist"); // Angela's choice of book
// listBooksByTitle("The Monk who sold his Ferrari"); // Kevin's choice of book
listBooksByTitle("Accidental Heroes");

// Expession Functions

const sqrtOfNums = function(number){
    let result = Math.sqrt(number);
    console.log(`result of the sqrt of ${number} is ${result}`);
    return result;
}

let result = sqrtOfNums(49);

let ages = [20, 30, 40, 50, 60, 70, 80, 90, 100];

let oldestPersonInAges = function findOldest(ages){
    let result = Math.floor(Math.max(...ages));
    console.log(`The oldest person in the list is ${result}`);
    return result;
}

let maxAge = oldestPersonInAges([20, 30, 40, 50, 60, 70, 80, 90, 100]);