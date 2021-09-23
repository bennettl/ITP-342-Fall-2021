//
//  MadLibsViewController.swift
//  MadLibsDemo
//
//  Created by lee bennett on 9/15/21.
//

import UIKit

class MadLibsViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var cityTextField: UITextField!
    
    @IBOutlet weak var verbTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var lessOrMoreSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var animalSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var favoriteNumberSlider: UISlider!
    
    @IBOutlet weak var petStepper: UIStepper!
    
    @IBOutlet weak var happyEndingSwitch: UISwitch!
    @IBOutlet weak var favoriteNumberLabel: UILabel!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        containerView.isHidden = true
    }
    
    @IBAction func lessOrMoreDidTapped(_ sender: UISegmentedControl) {
        
        containerView.isHidden = sender.selectedSegmentIndex == 0
        
        // Hide the containere view
//        if sender.selectedSegmentIndex == 0{
//            containerView.isHidden = true
//        } else{
//            containerView.isHidden = false
//        }
    }
    
    @IBAction func createStoryDidTapped(_ sender: UIButton) {
        
        let animalTitle =  animalSegmentedControl.titleForSegment(at: animalSegmentedControl.selectedSegmentIndex)
            
        var story = "At age of \(ageTextField.text!), \(nameTextField.text!) took a trip to \(cityTextField.text!) with \(Int(petStepper.value)) pets in order to \(verbTextField.text!) with a \(animalTitle!). \(nameTextField.text!) decided to buy \(Int(favoriteNumberSlider.value))."
        
        if happyEndingSwitch.isOn{
            story += " Now they live happily ever after."
        } else{
            story += " Things didn't end well for \(nameTextField.text!)"
        }
        
//        print(story)
        
        let alertController = UIAlertController(title: "Mad Lib Story", message: story, preferredStyle: .alert)
        
        let doneButton = UIAlertAction(title: "Done", style: .default, handler: nil)
        
        alertController.addAction(doneButton)
        
        present(alertController, animated: true, completion: nil)
        
        
        //At age of 21, bob took  a trip to austin with 3 pets in order to sing with a moose. Bob decided to buy 42. Now they live happily ever after.
    }
    
    
    @IBAction func sliderDidChange(_ sender: UISlider) {
        
        favoriteNumberLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
        
        numberOfPetsLabel.accessibilityLabel = HW3AccessibilityIdentifiers.questionLabel
    }
    
}


/// Contains accessibility identifiers used in ITP-342 20183 HW2 for grading.
/// Don't change the contents of this file.
struct HW3AccessibilityIdentifiers {
    /// Identifier for your UILabel asking the user the question
    static let questionLabel = "questionLabel"
    /// Identifier for the UITextField that the user can input their answer into
    static let answerTextField = "answerTextField"
    /// Identifier for the first UIButton the user can press to select the first option
    static let optionButton1 = "optionButton1"
    /// Identifier for the second UIButton the user can press to select the second option
    static let optionButton2 = "optionButton2"
    /// Identifier for the UIImageView used to display content near the first option button
    /// if the button has text. Not required if the button has no text and its own image.
    static let answerImageView1 = "answerImageView1"
    /// Identifier for the UIImageView used to display content near the second option button
    /// if the button has text. Not required if the button has no text and its own image.
    static let answerImageView2 = "answerImageView2"
    /// Identifier for the UILabel that displays the message to the user based on their input
    static let messageLabel = "messageLabel"
    /// Identifer for the UIButton that resets the state of the app
    static let resetButton = "resetButton"
}
