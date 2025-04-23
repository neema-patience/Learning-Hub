# JAVASCRIPT OUTPUT

## JavaScript can "display" data in different ways:

1. Writing into an HTML element, using innerHTML or innerText.
 - To access an HTML element, you can use the document.getElementById(id) method.

 - Use the id attribute to identify the HTML element.

 - Then use the innerHTML property to change the HTML content of the HTML element:

 **Changing the innerHTML property of an HTML element is the most common way to display data in HTML.**

 (JS_Output.html)

 - To access an HTML element, use the document.getElementById(id) method.

 - Then use the innerText property to change the inner text of the HTML element

 **Use innerHTML when you want to change an HTML element and innerText when you only want to change the plain text.**
 
  __(innerText.html)__


2. Writing into the HTML output using document.write().

 __document.write() should only be used for testing__

3. Writing into an alert box, using window.alert().

 - You can use an alert box to display data
 - In JavaScript, the window object is the global scope object. This means that variables, properties, and methods by default belong to the window object. This also means that specifying the window keyword is optional
  __(window_alert.html)__

4. Writing into the browser console, using console.log()
 - For debugging purposes, you can call the console.log() method in the browser to display data.
