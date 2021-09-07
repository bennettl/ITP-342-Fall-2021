import Foundation

//
//// Data types
//
//// Character
//"A"
//
//// String
//"this is a string"
//
//// Int
//-1
//0
//1
//
//// Double / Float
//12.3
//45.6
//
//// Bool
//true
//false
//
//// Constants/ Variables
//
//let myFavoriteNumber: Int = 10
//// myFavoriteNumber = 20
//
//var money: Int = 100
//money = 200
//
//// Type Inference
//let name = "Bennett"
//
//// Double takes twice as much space as float
//// More precision
//let b = 24.5
//
//
//let computer = "Macbook"
//
//14 / 5
//99 / 100
//
//// String Interpolation
//let setenence = "My favorite computer is a \(computer)"
//
//
//// Control Flow
//
//
//// Boolean values and operators
//true
//false
//
//
//// Boolean expressions
//myFavoriteNumber > 5
//
//// Combine boolean expressions with logical Operators
//
//// AND (&&) - EVERY boolean expression needs to be true, for entire expression to be true
//myFavoriteNumber > 5 && myFavoriteNumber < 10
//
//// OR (||) - ONLY ONE boolean expression needs to be true, for entire expression to be true
//myFavoriteNumber > 5 || myFavoriteNumber < 10
//
//// NOT (!)
//!true
//!false
//
//// Branching
//
//// if statement - if a value is true, execute the following block of code
//if myFavoriteNumber < 10{
//    print("My favorite number is less than 10")
//} else if myFavoriteNumber < 5{
//    print("My favorite number is less than 5")
//}else{
//    print("My favorite number is \(myFavoriteNumber)")
//}
//
////if myFavoriteNumber == 0{
////
////} else if myFavoriteNumber == 1{
////
////} else if myFavoriteNumber == 2{
////
////}
//
//// switch statement
//switch myFavoriteNumber{
//    case 0...10:
//        print("My favorite number is 0")
//    case 1:
//        print("My favorite number is 1")
////    case 2:
////        print("My favorite number is 2")
//    default:
//        print("My favorite number is \(myFavoriteNumber)")
//
//}
//
//
//// Loop
//
//// for loop - execute a piece of code for a finite amount of times
//
//for number in 0...10{
//    print("the number is \(number)")
//}
//
////for i in stride(from: 10, to: 0, by: -2){
////    print("the number is \(i)")
////}
//
//
//// while loop - execute a piece of code as long as a condition is true
//
//var count = 10
//
//while count < 5{
//    print("count is \(count)")
//    count += 1
//}
//


// Piece of code
//let firstName = "Bennett"
//let lastName = "Lee"
//print("Hey, my name is \(firstName) \(lastName)")

//  Functions - wraps a piece of code, for you to execute multiple times

// DRY -> Don't Repeat Yourself
//
//// Definition - define what the function does
//func printName() {
//    let firstName = "Chris"
//    let lastName = "Lee"
//    print("Hey, my name is \(firstName) \(lastName)")
//}

//// Execution - use it
//printName()



// Definition - define what the function does


//// Default option
//func printName(firstName: String, lastName: String) {
//    print("Hey, my name is \(firstName) \(lastName)")
//}
//
//
//
//// Custom argument label
func printName(withFirst firstName: String,
               andLast lastName: String) {
    print("Hey, my name is \(firstName) \(lastName)")
}

//
//
//// Omit arugment label
func printName(_ firstName: String,
               _ lastName: String){
    
    
    print("Hey, my name is \(firstName) \(lastName)")
    sumInPrintName(x: <#T##Int#>, y: <#T##Int#>)
  
}

//
//
//// Execution - use it
//let firstName = "Bennett"
////printName("Bennett", "Lee")
////prinName
//printName(withFirst: "Bennett", andLast: "Lee")
//
//
//// Output
//
//func sum(x: Int, y: Int) -> Int{
//    return x + y
//}
//
//func divide(numerator: Double, denominator: Double) -> Double{
//    return numerator / denominator
//}
//
//// Tuple
//func getHttpStatusCode() -> (Int, String) {
//    return (200, "Ok")
//}
//
//let sumResult = sum(x: 10, y: 20)
//divide(numerator: 10.0, denominator: 20.0)
//
//let result = getHttpStatusCode()
//result.0
//result.1


var myFavoriteNumber = 5

// Inout parameters

func changeFavoriteNumber(number: inout Int){
    number = 10
}

changeFavoriteNumber(number: &myFavoriteNumber)

print(myFavoriteNumber)
