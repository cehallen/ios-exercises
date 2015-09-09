import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
    var favCheeseSentence = "My favorite cheese is \(cheese)."
    return favCheeseSentence
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4]
// Add 5 to this array
// WORK HERE
numberArray.append(5)

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE
numberDictionary[5] = "five"

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
// WORK HERE
for i in 1...10 {
    println(i)
}

// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE
for i in 1..<11 {
    println(i)
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:[[String : String]]) -> Array <String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
    /* make empty array, loop through characters array and in each pull/unwrap fav drink string and append to my array */
    var favDrinks = [String]()
    for char in characters {
        if let favStr = char["favorite drink"] {
            favDrinks.append(favStr)
        }
    }
    return favDrinks
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Optionals

*/

func emailFromUserDict(userDict : [String : String]) -> String {
    // Return the user's email address from userDict, or return "" if they don't have one
    
    // WORK HERE
//    var email = ""
    if let email = userDict["email"] {
        return email
    } else {
        return ""
    }
}


let mostafaElSayedUser = ["name" : "Mostafa A. El-Sayed", "occupation" : "Chemical Physicist", "email" : "mael-sayed@gatech.edu", "awards" : "Langmuir Award in Chemical Physics, Arabian Nobel Prize, Ahmed Zewail prize, The Class of 1943 Distinguished Professor, 2007 US National Medal of Science", "birthday" : "8 May 1933"]

let marjorieBrowneUser = ["name" : "Marjorie Lee Browne", "occupation" : "Mathematician", "birthday" : "September 9, 1914"]


// If your emailFromUserDict function is implemented correctly, both of these should output "true":

emailFromUserDict(mostafaElSayedUser) == "mael-sayed@gatech.edu"
emailFromUserDict(marjorieBrowneUser) == ""

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in
func joiner(stringArr: [String]) -> String {
    var output = ";".join(stringArr)
    return output
}

let myOutput = joiner(strings)

let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE

// QUESTION: not sure how the '<' sorts alphabetically.  I thought it only compares two by two, and if comparison is 'true' returns first val first.  So how does it sort the whole array?  Do I need to write a quicksort or something and if so why is this working..

// QUESTION: why does "a" < "b" evaluate to true but "b" > "a" error out?  What if I want to sort alphabetically, backwards?

let sortedCereals = sorted(cerealArray, {(cereal1: String, cereal2: String) -> Bool in
        return cereal1 < cereal2
    })

//// one way a little shorter
//let sortedCereals = sorted(cerealArray, {c1, c2 in c1 < c2})
//println(sortedCereals)

//// or use $0, $1 shortcuts for items
//let sortedCereals = sorted(cerealArray, {$0 < $1})
//println(sortedCereals)

//// shorter still
//let sortedCereals = sorted(cerealArray, <)
//println(sortedCereals)