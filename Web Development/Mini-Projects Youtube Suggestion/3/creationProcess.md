# Steps to Create a Random Quote Generator

1. **Create `main.html`**  
   - Start with the `<!DOCTYPE html>` declaration.  
   - Add an `<html>` tag with the `lang` attribute set to `"en"`.  
   - Inside the `<head>` section:  
     - Add a `<meta charset="UTF-8">` for character encoding.  
     - Add a `<meta name="viewport" content="width=device-width, initial-scale=1.0">` for responsive design.  
     - Add a `<title>` for the application.  
     - Add a `<style>` section to define CSS styles.  
   - Inside the `<body>` section:  
     - Add an `<h1>` for the application title.  
     - Create a `<p>` element with an ID of `quote` to display the generated quote.  
     - Add a `<button>` to generate quotes with an `onclick` attribute calling `generateQuote()`.  
     - Add a `<button>` to reset quotes with an `onclick` attribute calling `resetQuotes()`.  
     - Include a `<script>` tag to link to `index.js`.  

2. **Define CSS Styles** (Inside the `<style>` tag in `main.html`)  
   - Set styles for the `body`, heading, quote display, and buttons.  
   - Apply a background color and text alignment for the page.  
   - Style the quote display with padding, borders, and background color.  
   - Customize buttons with padding, font size, background color, and hover effects.  

3. **Create `index.js`**  
   - Select the quote element using `document.getElementById("quote")`.  
   - Define an array called `quotes` containing multiple quote strings.  
   - Implement the `generateQuote()` function:  
     - Ensure quotes are not repeated until all have been displayed.  
     - Randomly select a quote and update the displayed text.  
   - Implement the `resetQuotes()` function:  
     - Clear the used indexes.  
     - Reset the quote display message.  
