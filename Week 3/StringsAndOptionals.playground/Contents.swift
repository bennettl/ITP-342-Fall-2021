import Foundation

let quotation = """
    The White Rabbit put on his spectacles.  "Where shall I begin,
      please your Majesty?" he asked.

    "Begin at the beginning," the King said gravely, "and go on
    till you come to the end; then stop."
"""

//print(quotation)

let singleQuote = "The White Rabbit put on his spectacles. ' \n \"Where shall I begin, please your Majesty?\" he asked. Begin at the beginning, the King said gravely, and go on till you come to the end; then stop."

print(singleQuote)


// Value v Reference Types

func printName(name: String){
    print(name)
}

let myName = "Bennett"
var anotherName = myName

printName(name: myName)

"  ".isEmpty
"".isEmpty


"  ".isEmpty

//var welcome = "Hey"
//let exclamationMark: Character = "!"
//
//welcome.append("!")
////welcome = welcome + "!"
//// welcome +=  "!"
//
//welcome

let name = "Bennett"
name.count

// To access characters in a swift string, you need to use the String.Index data type and not Integers
name[name.startIndex] // "B"
name[name.index(before: name.endIndex)] // "t"

//name.index(after: <#T##String.Index#>)
name[name.index(name.startIndex, offsetBy: 1)]


let num = 42.2222

print(String(format: "num $%.2f", num))



// NULL POINTER EXCEPTION
    // -> accessing a null value

// Swift makes every constant and variable by default required to a have a value

// Anytime you have a variable that has the potential to be nil, it needs to be an optional

// How to declare an optional type
//var myComputer: Optional<String> = nil
var myComputer: String! = "Macbook"
//myComputer = nil
//myComputer = "Macbook"

// How to access values of an optional

// 1. Force Unwrapping - easiest to do, but also most dangerous
//print(myComputer!)

// 2. Implicit unwrapped optionals



// 3. Condition binding - if statement to use the optional value if it exists
if let computer = myComputer{
    print("my computer is \(computer)")
}

// Nil coalenscing operator
print(myComputer ?? "Pixel") // default it to say "Pixel"



//myComputer.isEmpty
