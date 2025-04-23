let items = [];

const itemsDiv = document.getElementById("items");
const input = document.getElementById("ItemInput");
const storageKey = "items";

// Function to render items on the page
function renderItems() {
  const tbody = document.querySelector("#items tbody"); // Select the tbody of the existing table
  tbody.innerHTML = ""; // Clear the current items display

  for (const [indx, item] of Object.entries(items)) {
    const tr = document.createElement("tr"); // Create a table row

    const tdItem = document.createElement("td"); // Create a table data cell for the item
    tdItem.textContent = item; // Set the text content to the item

    const tdButton = document.createElement("td"); // Create a table data cell for the button
    const editButton = document.createElement("button");
    editButton.textContent = "Edit";
    editButton.onclick = () => editItem(indx); // Set the edit function

    const button = document.createElement("button");
    button.textContent = "Delete";
    button.onclick = () => removeItem(indx); // Set the delete function

    tdButton.appendChild(editButton); // Append the edit button to the button cell
    tdButton.appendChild(button); // Append the delete button to the button cell

    tr.appendChild(tdItem); // Append the item cell to the row
    tr.appendChild(tdButton); // Append the button cell to the row
    tbody.appendChild(tr); // Append the row to the tbody
  }
}

// Function to load items from local storage
function loadItems() {
  const oldItems = localStorage.getItem(storageKey);
  if (oldItems) {
    items = JSON.parse(oldItems);
    renderItems();
  }
}

// Function to save items to local storage
function saveItems() {
  const stringItems = JSON.stringify(items);
  localStorage.setItem(storageKey, stringItems);
}

// Function to remove an item from the list
function removeItem(idx) {
  items.splice(idx, 1); // Remove the item from the array
  renderItems(); // Re-render the items
  saveItems(); // Save the updated items to local storage
}

function editItem(idx) {
  const itemToEdit = items[idx]; // Get the item to edit
  input.value = itemToEdit; // Populate the input with the item text
  items.splice(idx, 1); // Remove the item from the array for re-adding
}

// Function to add an item to the list
function addItems() {
  const itemInput = document.getElementById("ItemInput");
  const item = itemInput.value;
  // Check if the input is empty and alert the user
  if (!item) {
    alert("Please enter an item.");
    return; // Exit the function if the input is empty
  }
  // Update the item in the array
  items.push(item); // Add the item to the array
  itemInput.value = ''; // Clear the input field
  renderItems(); // Re-render the items
  saveItems(); // Save the updated items to local storage
}

// Load items when the document is ready
document.addEventListener("DOMContentLoaded", loadItems);
