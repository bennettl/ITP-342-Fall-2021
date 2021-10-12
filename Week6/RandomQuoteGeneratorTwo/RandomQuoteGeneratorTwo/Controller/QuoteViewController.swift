//
//  QuoteViewController.swift
//  RandomQuoteGeneratorTwo
//
//  Created by lee bennett on 9/29/21.
//

import UIKit


class QuoteViewController: UIViewController {
    
    // Reasons why we need outlets
    // 1. To modify the attributes / properties of an interface component
    // 2. Access the attributes / properties of an interface component
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var authorLabel: UILabel!
    
    // // Example of optional chaning
    @IBOutlet weak var anotherLabel: UILabel?


    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuote()
        
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        // Example of optional chaning
        // authorLabel?.text?.uppercased()
        
        // 1. Create the gesture recognizer
                // define what the gesture is, and what method will it execute once a gesture has been recognized
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapDidRecognized(_:)))
        
        let double = UITapGestureRecognizer(target: self, action: #selector(doubleTapDidRecognized(_:)))
        double.numberOfTapsRequired = 2
        
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeRightDidRecognized(_:)))
        
        tap.require(toFail: double)

        // 2. Attach the gesture recognizer to a View
        messageLabel.addGestureRecognizer(tap)
        messageLabel.addGestureRecognizer(double)
        messageLabel.addGestureRecognizer(swipe)
        
        // 3. Make sure UIView is enabling user interaction
        
        
        // More singleton examples, out of othe box by UIKit
        // FileManager.default
        // UIApplication.shared.
    }
    
    @IBAction func leftSwipeDidRecognized(_ sender: UISwipeGestureRecognizer) {
        print("\(#function)")
    }
    
    @objc func tapDidRecognized(_ tap: UITapGestureRecognizer){
        print("\(#function)")
    }
    
    @objc func doubleTapDidRecognized(_ tap: UITapGestureRecognizer){
        print("\(#function)")
    }
    
    @objc func swipeRightDidRecognized(_ swipe: UISwipeGestureRecognizer){
        print("\(#function)")
    }
    
    @IBAction func getNewQuoteDidTapped(_ sender: UIButton) {
        updateQuote()
    }
       
    
    @IBAction func authorLabelDidTapped(_ sender: UITapGestureRecognizer) {

        let originalCenter = self.authorLabel.center

        let animator = UIViewPropertyAnimator(duration: 2.0, curve: .easeInOut) {
            // Define what we want our target state to be
            self.authorLabel.alpha = 0
            var center = self.authorLabel.center
            center.x += 150
            
            self.authorLabel.center = center
        }
        
        animator.addCompletion { p in
            let animator = UIViewPropertyAnimator(duration: 2.0, curve: .easeInOut) {
                self.authorLabel.alpha = 1
                self.authorLabel.center = originalCenter
            }
            animator.startAnimation()
        }
        
        animator.startAnimation()

        
    }
    
    
    func updateQuote(){
        // Create the model and use it!
        let quote = QuoteService.shared.getRandomQuote()
        
        messageLabel.text = quote.message
        authorLabel.text = quote.author
    }
    
}


