// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.

// const secretCodeWord1 = "Lackadaisical"
// // Expected output: 
// const secretCodeWord2 = "Gobbledygook"
// // Expected output: "G0bbl3dyg00k"
// const secretCodeWord3 = "Eccentric"
// // Expected output: "3cc3ntr1c"

// describe("codedMessage", () => {
//     it("takes in a string and returns a string with a coded message", () => {
//         expect(codedMessage(secretCodeWord1)).toEqual("L4ck4d41s1c4l")
//         expect(codedMessage(secretCodeWord2)).toEqual("G0bbl3dyg00k")
//         expect(codedMessage(secretCodeWord3)).toEqual("3cc3ntr1c")
//     })
// })

// b) Create the function that makes the test pass.
// Pseudo code:
//This was the original idea that I had after looking in MDN and learning about the .replace method but i was switching it for hours trying to understand why I wasnt getting my expected output. I went and used CHAT because i was getting frustrated and input my code and it explained how to use the .replace method and went with the way that I understood. But when I tested it in jest it failed due to only switching the character one and I understood that I should have maybe converted the string into and array and manipulated it some way.

// const codedMessage = (string) => {
//     const swapped = {
//         'a' = '4',
//         'e' = '3',
//         'i' = '1',
//         'o' = '0',
//     }
//     return string.replace('a,e,i,o' , '4,3,1,0')
    
//     console.log(codedMessage(secretCodeWord1))

// }

// const codedMessage = (string) => {
//     const swapped = {
//         'a': '4',
//         'e': '3',
//         'i': '1',
//         'o': '0',
//         'A': '4',
//         'E': '3',
//         'I': '1',
//         'O': '0',
//     }

//     return string
//         .replace('a', swapped['a'])
//         .replace('e', swapped['e'])
//         .replace('i', swapped['i'])
//         .replace('o', swapped['o'])
//         .replace('A', swapped['A'])
//         .replace('E', swapped['E'])
//         .replace('I', swapped['I'])
//         .replace('O', swapped['O'])
// }

// console.log(codedMessage(secretCodeWord1))
// console.log(codedMessage(secretCodeWord2))
// console.log(codedMessage(secretCodeWord3))




// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.

const hand1 = [5, 5, 5, 3, 3]
// Expected output: true
const hand2 = [5, 5, 3, 3, 4]
// Expected output: false
const hand3 = [5, 5, 5, 5, 4]
// Expected output: false
const hand4 = [7, 2, 7, 2, 7]
// Expected output: true

describe("fullHouse", () => {
    it("takes in an array of 5 numbers and determines whether or not the array is a full house", () => {
        expect(fullHouse(hand1)).toEqual(true)
        expect(fullHouse(hand2)).toEqual(false)
        expect(fullHouse(hand3)).toEqual(false)
        expect(fullHouse(hand4)).toEqual(true)
        
    })
})

// b) Create the function that makes the test pass.



function isFullHouse(hand) {
    const uniqueNumbers = Array.from(new Set(hand));
  
    // Check for a pair and a three of a kind
    let hasPair = false;
    let hasThreeOfAKind = false;
  
    uniqueNumbers.forEach(number => {
      const count = hand.filter(x => x === number).length;
  
      if (count === 2) {
        hasPair = true;
      } else if (count === 3) {
        hasThreeOfAKind = true;
      }
    });
  
    // Return true if both conditions are met
    return hasPair && hasThreeOfAKind;
  }
  
  // Test cases
  console.log(isFullHouse([5, 5, 5, 3, 3])); // true
  console.log(isFullHouse([5, 5, 3, 3, 4])); // false
  console.log(isFullHouse([5, 5, 5, 5, 4])); // false
  console.log(isFullHouse([7, 2, 7, 2, 7])); // true
  


// Pseudo code:
// I found the correct anwser of Chat . I just couldnt figure it out. Started getting frustrated and tired 