const input = document.getElementById("input"); // Call from line 10 in Main.html

function reverseString(str) {
    return str.split("").reverse().join(""); 
    /* Fancy way of checking string palindromes
    The str.split, .reverse and .join are functions that call for the changes in the (str) introduced above.
    */
}

function check() {
    const historyTable = document.getElementById('history').getElementsByTagName('tbody')[0];

    const value = input.value.toLowerCase(); // Convert input to lowercase

    const reverse = reverseString(value); // Function to reverse the string. Mentioned in line 3.
    
    const resultMessage = value === reverse ? "This is a palindrome!" : "Not a palindrome.";

    // Add the checked word and result message to the history table
    const newRow = historyTable.insertRow();
    const checkedWordCell = newRow.insertCell(0);
    const resultCell = newRow.insertCell(1);
    
    checkedWordCell.innerText = value;
    resultCell.innerText = resultMessage; // Add the result message to the history table

    // Apply border styles to the new cells
    checkedWordCell.style.border = "1px solid black";
    resultCell.style.border = "1px solid black";
    checkedWordCell.style.padding = "8px"; // Add padding for better spacing
    resultCell.style.padding = "8px"; // Add padding for better spacing
    checkedWordCell.style.textAlign = "left"; // Align text to the left
    resultCell.style.textAlign = "left"; // Align text to the left
}

document.addEventListener('DOMContentLoaded', function() {
    // Add example checked words to the history table for testing
    const historyTable = document.getElementById('history').getElementsByTagName('tbody')[0];
    const exampleEntries = [
        { word: "racecar", result: "This is a palindrome!" },
        { word: "hello", result: "Not a palindrome." },
        { word: "level", result: "This is a palindrome!" },
        { word: "world", result: "Not a palindrome." }
    ];

    exampleEntries.forEach(entry => {
        const newRow = historyTable.insertRow();
        const checkedWordCell = newRow.insertCell(0);
        const resultCell = newRow.insertCell(1);
        
        checkedWordCell.innerText = entry.word;
        resultCell.innerText = entry.result;
        newRow.cells[0].style.border = "1px solid black"; // Add border to Checked Word cell
        newRow.cells[1].style.border = "1px solid black"; // Add border to Result cell
        newRow.cells[0].style.padding = "8px"; // Add padding for better spacing
        newRow.cells[1].style.padding = "8px"; // Add padding for better spacing
        newRow.cells[0].style.textAlign = "left"; // Align text to the left
        newRow.cells[1].style.textAlign = "left"; // Align text to the left

        // Apply background color for example entries
        newRow.cells[0].style.backgroundColor = "#fff9c4"; // Light yellow background for readability
        newRow.cells[1].style.backgroundColor = "#fff9c4"; // Light yellow background for readability
    });

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
