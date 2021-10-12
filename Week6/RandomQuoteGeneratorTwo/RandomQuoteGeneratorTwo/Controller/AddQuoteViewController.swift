//
//  AddQuoteViewController.swift
//  RandomQuoteGeneratorTwo
//
//  Created by lee bennett on 10/11/21.
//

import UIKit

class AddQuoteViewController: UIViewController {
    @IBOutlet weak var messageTextField: UITextField!
    
    @IBOutlet weak var authorTextField: UITextField!
    
    
    @IBAction func createDIdTapped(_ sender: UIButton) {
        // Create a new Quote!
        let quote = Quote(message: messageTextField.text!, author: authorTextField.text!)
        QuoteService.shared.append(quote: quote)
        
    }
    


}
