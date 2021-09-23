import Foundation

var greeting = "Hello, playground"

@objc
protocol Drivable{
    func turnRight()
    
    func turnLeft()
    
    func accelerate(speed: Double) -> Double
    
    @objc optional func decelerate(speed: Double) -> Double
}


class Tesla : Drivable{
    
    func turnRight() {
    }
    
    func turnLeft() {
    }
    
    func accelerate(speed: Double) -> Double {
        return speed + 10
    }
    
    func decelerate(speed: Double) -> Double{
        return speed - 10
    }
    
    
}


let mySistersCar = Tesla()



// UIKit example of delegation

// Protocol - UITextFieldDelegate

// Delegate - Our custom UIVIewController

// Delegator - UITextField
