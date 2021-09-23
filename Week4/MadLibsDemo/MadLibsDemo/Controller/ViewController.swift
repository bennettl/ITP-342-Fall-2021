//
//  ViewController.swift
//  MadLibsDemo
//
//  Created by lee bennett on 9/15/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainTextField: UITextField!
    
    @IBOutlet weak var defaultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        defaultLabel.text = "something else"
        
        mainTextField.becomeFirstResponder()
        
        print("\(#function)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("\(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\(#function)")
    }
    
    
    @IBAction func returnDidTapped(_ sender: UITextField) {
        mainTextField.resignFirstResponder()
    }
    
    @IBAction func yesDidTapped(_ sender: UIButton) {
        print("i'm tapped")
        defaultLabel.text = "\(mainTextField.text!)"
        mainTextField.resignFirstResponder()
    }
    
    @IBAction func backgronudButtonDidPressed(_ sender: UIButton) {
        mainTextField.resignFirstResponder()
    }
    
}

