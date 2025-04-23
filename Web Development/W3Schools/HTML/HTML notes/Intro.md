# Introduction to HTML  

## What is HTML?  
HTML (**HyperText Markup Language**) is the standard language for creating web pages. It:  
- Defines the **structure** of a web page  
- Consists of a **series of elements**  
- Uses **tags** to label content (e.g., headings, paragraphs, links)  

## Basic HTML Document  
### Example:  
```html
<!DOCTYPE html>
<html>
<head>
    <title>Page Title</title>
</head>
<body>
    <h1>My First Heading</h1>
    <p>My first paragraph.</p>
</body>
</html>
```

### Explanation:  
- `<!DOCTYPE html>` → Defines the document as HTML5  
- `<html>` → The root element of the HTML page  
- `<head>` → Contains metadata about the page  
- `<title>` → Specifies the page title (shown in the browser tab)  
- `<body>` → Contains visible content (headings, paragraphs, images, etc.)  
- `<h1>` → Defines a large heading  
- `<p>` → Defines a paragraph  

## HTML Elements  
An HTML element consists of a **start tag**, **content**, and an **end tag**:  
```html
<tagname>Content goes here...</tagname>
```
### Example:
```html
<h1>My First Heading</h1>
<p>My first paragraph.</p>
```

| Start Tag | Element Content | End Tag |
|-----------|----------------|---------|
| `<h1>` | My First Heading | `</h1>` |
| `<p>` | My first paragraph | `</p>` |
| `<br>` | *None* | *None* (self-closing) |

> **Note:** Some elements, like `<br>`, are **empty elements** (no closing tag).  

## Web Browsers and HTML  
Web browsers (Chrome, Edge, Firefox, Safari) **read HTML** and display the content accordingly.  
> **Browsers do not display HTML tags** but use them to determine page structure.  

## HTML Page Structure  
Example:  
```html
<html>
<head>
    <title>Page Title</title>
</head>
<body>
    <h1>This is a heading</h1>
    <p>This is a paragraph.</p>
    <p>This is another paragraph.</p>
</body>
</html>
```
> **Note:** Content inside `<body>` is displayed in the browser. The `<title>` appears in the browser tab.  

## HTML History  
| Year | Version |
|------|---------|
| 1989 | Tim Berners-Lee invented the World Wide Web |
| 1991 | Tim Berners-Lee created HTML |
| 1995 | HTML 2.0 defined |
| 1997 | HTML 3.2 recommended |
| 1999 | HTML 4.01 recommended |
| 2000 | XHTML 1.0 introduced |
| 2008 | First public draft of HTML5 |
| 2014 | HTML5 officially recommended |
| 2017 | HTML5.2 released |

> **This guide follows the latest HTML5 standard.** 🚀
