const body = document.getElementsByTagName("body")[0]

function setColor(name){
    body.style.backgroundColor = name;
    // Change text color based on background color for readability
    const textColor = (name === 'green' || name === 'red') ? 'white' : 'black';
    body.style.color = textColor;

    // Update the color display text
    document.getElementById('colorDisplay').innerText = `Selected Color: ${name}`;
}



function randomColor(){
    const red = Math.round(Math.random() * 255)
    const green = Math.round(Math.random() * 255)
    const blue = Math.round(Math.random() * 255)

    const color = `rgb(${red}, ${green}, ${blue})`;
    // Change text color to black for random colors
    body.style.color = 'black';

    // Update the color display text for random colors
    document.getElementById('colorDisplay').innerText = `Selected Color: ${color}`;


    body.style.backgroundColor = color;
}
