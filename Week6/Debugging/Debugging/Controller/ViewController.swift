//
//  ViewController.swift
//  Debugging
//
//  Created by lee bennett on 9/27/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstTextField: UITextField!
    
    @IBOutlet weak var secondTextField: UITextField!
   
    
    @IBAction func addDidTapped(_ sender: UIButton) {
    
        let firstNumber = Int(firstTextField.text!)!
        let secondNumber = Int(secondTextField.text!)!
        
        let result = Calculator().add(x: firstNumber, y: secondNumber)
        
        print("result is \(result)")
    }
    
}

