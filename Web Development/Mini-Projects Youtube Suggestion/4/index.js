let secondsElapsed = 0; // Tracks the number of seconds elapsed
let interval = null; // Holds the interval ID for the timer
const minutesDisplay = document.getElementById("minutes"); // Reference to the HTML element displaying minutes
const secondsDisplay = document.getElementById("seconds"); // Reference to the HTML element displaying seconds

function padStart(value){
    return String(value).padStart(2,"0")
}

// Function to update the displayed time
function setTimer() {
    const minutes = Math.floor(secondsElapsed / 60);
    const seconds = secondsElapsed % 60;
    minutesDisplay.innerHTML = padStart(minutes); // Update minutes display
    secondsDisplay.innerHTML = padStart(seconds); // Update seconds display
    console.log(`Timer updated: ${padStart(minutes)}:${padStart(seconds)}`); // Debug log
}

// Function to increment the seconds elapsed
function incrementTimer() {
    secondsElapsed++; // Increase the seconds elapsed by 1
    console.log(`Seconds elapsed: ${secondsElapsed}`); // Debug log
}

// Function to start the stopwatch
function startClock() {
    console.log("Attempting to start clock..."); // Debugging log
    if (interval) return; // Prevent starting a new interval if one is already running
    console.log("Starting clock, current interval:", interval); // Debugging log
    interval = setInterval(() => {
        incrementTimer(); // Increment the timer
        setTimer(); // Update the display to show the current time
    }, 1000); // Set an interval to call incrementTimer every second
}

// Function to stop the stopwatch
function stopClock() {
    if (interval) {
        clearInterval(interval); // Clear the interval to stop the timer
        interval = null; // Reset the interval variable
        console.log("Clock stopped."); // Debug log
    }
}

// Function to reset the stopwatch
function resetClock() {
    clearInterval(interval); // Clear the interval to stop the timer
    secondsElapsed = 0; // Reset seconds elapsed to 0
    setTimer(); // Update the display to show the reset time
    console.log("Clock reset."); // Debug log
}
