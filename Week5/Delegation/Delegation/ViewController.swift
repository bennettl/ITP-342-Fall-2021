//
//  ViewController.swift
//  Delegation
//
//  Created by lee bennett on 9/22/21.
//

import UIKit

// View controller is the delegate because it is processing events from the delegator (UITextField)
class ViewController: UIViewController, UITextFieldDelegate {
    
    let TAG_NAME_TEXTFIELD = 100
    let TAG_AGE_TEXTFIELD = 100

    @IBOutlet weak var mainTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainTextField.delegate = self
        // Do any additional setup after loading the view.
    }

   
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        
        if textField.tag == TAG_NAME_TEXTFIELD{
            
        }
        
        if textField.tag == TAG_AGE_TEXTFIELD{
            
        }
        
        print("\(#function)")
    }
    
    @IBAction func dismissDidTapped(_ sender: UIButton) {
        mainTextField.resignFirstResponder()
    }
    
}

