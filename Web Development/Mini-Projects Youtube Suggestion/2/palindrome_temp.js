const input = document.getElementById("input"); // Call from line 10 in Main.html

function reverseString(str) {
    return str.split("").reverse().join(""); 
    /* Fancy way of checking string palindromes
    The str.split, .reverse and .join are functions that call for the changes in the (str) introduced above.
    */
}

function check() {
    const historyTable = document.getElementById('history').getElementsByTagName('tbody')[0];

    const value = input.value;
    const reverse = reverseString(value); // Function to reverse the string. Mentioned in line 3.
    
    const resultMessage = value === reverse ? "This is a palindrome!" : "Not a palindrome.";
    document.getElementById('result').innerText = resultMessage; // Display the result message

    // Add the checked word and result message to the history table
    const newRow = historyTable.insertRow();
    newRow.insertCell(0).innerText = value;
    newRow.insertCell(1).innerText = resultMessage; // Add the result message to the history table
}

document.addEventListener('DOMContentLoaded', function() {
    const inputField = document.getElementById('input');
    inputField.focus(); // Focus on the input field when the page loads

    // Add event listener for button click
    document.getElementById('checkButton').onclick = check; // Ensure check function is called on button click
    inputField.addEventListener('keypress', function(event) {
        if (event.key === 'Enter') {
            check(); // Trigger check function on Enter key press
        }
    });
});
