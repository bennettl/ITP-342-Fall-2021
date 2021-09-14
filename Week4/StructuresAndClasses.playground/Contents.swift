import Foundation

// Struct / class definition
// Intiializer, properties, methods

// Definition
struct Student{
    
    // Type property
    static var numberOfRegisterStudents = 0
    
    // Type methods
    static func printRegisterStudents(){
        print("\(numberOfRegisterStudents)")
    }
    
    // Instance + Stored Properties
    let name: String
    
    let age: Int
    
    // Field level intializer
//    let age: Int = 25
    
    // Empty default initializer
    init(){
        name = "Sam"
        age = 25
        
        Student.numberOfRegisterStudents += 1
    }
    
    // Custom Initializer
    init(name: String, age: Int){
        // "self" property
        self.name = name
        self.age = age

        Student.numberOfRegisterStudents += 1

    }
    
    // Instance Methods
    func walk(){
        print("\(name) is walking")
    }
}

// Instances - Instantiate the object
let sam = Student()
let jose = Student(name: "Jose", age: 12)

Student.numberOfRegisterStudents
Student.printRegisterStudents()

// Dot notation
sam.age
sam.walk()
jose.age
jose.name

class Teacher{
    let name: String = "Jane"

    let age: Int = 25
    
    deinit {
        print("I'm going away!!!!")
    }
}

let jane = Teacher()
//jane.age = 30

// Stored / compute properties
 struct Square{
    
    // Stored
    var width: Double
    
    var height: Double
    
    // Computed property - purely syntatic sugar
    var area: Double{
        get{
            return width * height
        }
        set{
            width = newValue.squareRoot()
            height = newValue.squareRoot()
        }
    }
    
    init(width: Double, height: Double){
        self.width = width
        self.height = height
    }
    
//    func getArea() -> Double{
//        return width * height
//    }
}

var square = Square(width: 25, height: 25)
square.area
square.area = 100
square.width
square.height

// Memberwise initializer - available to structures

struct Phone{
    let name: String
    
    let year: Int
}

let pixel = Phone(name: "Bennett's Pixel 3", year: 2015)
pixel.name

// Structure v classes

// Access control

// Principal of least privelge

// open - least restrictive - everything inside and outside of module can access and can subclass

// public - everything inside and outside of module can access, not subclassable

// internal - default access modifier - everything in module can access

// fileprivate - everything in .swift source code file can access

// private - most restrictive - only  methods / computed properties in type definition  can access













// Inheritance, override, accessing super class, preventing overrides

// Superclass -> Person
// Subclass -> Employee
class Person{
    let name: String
    
    init(name: String){
        self.name = name
    }
    
    func talk(){
        print("I'm talking as a person")
    }
}

class Employee: Person{
    
    let employeeId: String = "1"
    
    override init(name: String){
        super.init(name: name)
    }
    
    override func talk(){
        super.talk()
        print("I'm talking as an employee with id \(employeeId)")
    }
}


let bob = Employee(name: "Bob")
bob.talk()

// Randomness
Double.random(in: 1..<100)

// Reference type
//var myAge = 20
//
//func changeAge(age: inout Int){
//    age = 30
//}
//
//changeAge(age: &myAge)
//myAge
