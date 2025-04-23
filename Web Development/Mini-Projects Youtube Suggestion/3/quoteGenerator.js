/**
 * Array of quotes to be displayed randomly.
 */
const quotes = [

    "The only way to do great work is to love what you do. - Steve Jobs",
    "Life is what happens when you're busy making other plans. - John Lennon",
    "Get busy living or get busy dying. - Stephen King",
    "You have within you right now, everything you need to deal with whatever the world can throw at you. - Brian Tracy",
    "Believe you can and you're halfway there. - Theodore Roosevelt",
    "The future belongs to those who believe in the beauty of their dreams. - Eleanor Roosevelt",
    "It does not matter how slowly you go as long as you do not stop. - Confucius",
    "Success is not final, failure is not fatal: It is the courage to continue that counts. - Winston S. Churchill",
    "What lies behind us and what lies before us are tiny matters compared to what lies within us. - Ralph Waldo Emerson",
    "You miss 100% of the shots you don't take. - Wayne Gretzky",
    "The best time to plant a tree was twenty years ago. The second best time is now. - Chinese Proverb",
    "Your time is limited, don't waste it living someone else's life. - Steve Jobs",
    "The only limit to our realization of tomorrow will be our doubts of today. - Franklin D. Roosevelt",
    "Act as if what you do makes a difference. It does. - William James",
    "Success usually comes to those who are too busy to be looking for it. - Henry David Thoreau",
    "Opportunities don't happen, you create them. - Chris Grosser",
    "Don't watch the clock; do what it does. Keep going. - Sam Levenson",
    "The way to get started is to quit talking and begin doing. - Walt Disney",
    "If you want to achieve greatness stop asking for permission. - Anonymous",
    "I find that the harder I work, the more luck I seem to have. - Thomas Jefferson"
]

const usedIndexes = new Set()// Set doesn't keep order but you cannot have 2 smae elements
const quoteElement = document.getElementById("quote")


function generateQuote(){
    // Check if all quotes have been used
    if (usedIndexes.size === quotes.length) {

        alert("All quotes have been used!");
        usedIndexes.clear(); // Resetting for reuse
    }
    
    while (true) {

        const randomIdx = Math.floor(Math.random()* quotes.length)

        if (usedIndexes.has(randomIdx)) continue

        // Get the quote corresponding to the random index
        const quote = quotes[randomIdx]


        // Display the selected quote in the HTML element
        quoteElement.innerHTML = quote;

        usedIndexes.add(randomIdx)
        break
    }

}
