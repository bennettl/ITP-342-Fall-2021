//
//  AddQuoteViewController.swift
//  RandomQuoteGeneratorTwo
//
//  Created by lee bennett on 10/11/21.
//

import UIKit



class AddQuoteViewController: UIViewController, UITextFieldDelegate {
    
    
    var onComplete: ((Quote) -> Void)?
    
    var quote: Quote?
    
    @IBOutlet weak var messageTextField: UITextField!
    
    @IBOutlet weak var authorTextField: UITextField!
    
    @IBOutlet weak var createButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createButton.isEnabled = false
        
        messageTextField.text = quote?.message
        authorTextField.text = quote?.author
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        messageTextField.becomeFirstResponder()
    }
    
    @IBAction func createDIdTapped(_ sender: UIButton) {
        // Create a new Quote!
        let quote = Quote(message: messageTextField.text!, author: authorTextField.text!)
        QuoteService.shared.append(quote: quote)
        
        onComplete?(quote)
    }
    
    // MARK : UITextFieldDelegate
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if let text = textField.text, let textRange = Range(range, in: text){
            let updatedText = text.replacingCharacters(in: textRange, with: string)
            
            if textField == messageTextField{
                enableSubmitButton(message: updatedText, author: authorTextField.text!)
            } else{
                enableSubmitButton(message: messageTextField.text!, author: updatedText)
            }
            
            print("\(updatedText)")
        }
        return true
    }
    
    func enableSubmitButton(message: String, author: String){
        if message.isEmpty || author.isEmpty{
            createButton.isEnabled = false
        } else{
            createButton.isEnabled = true
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()

        if textField == messageTextField{
            authorTextField.becomeFirstResponder()
        }
        
        return true
    }


}
