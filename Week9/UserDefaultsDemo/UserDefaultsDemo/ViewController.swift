//
//  ViewController.swift
//  UserDefaultsDemo
//
//  Created by lee bennett on 10/18/21.
//

import UIKit

let KEY_DARK_MODE = "darkMode"

class ViewController: UIViewController {

    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var mainSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 2. Reading the data
        let darkMode = UserDefaults.standard.bool(forKey: KEY_DARK_MODE)
        mainSwitch.isOn = darkMode
        updateUI()
    }
    
    @IBAction func switchDidTapped(_ sender: UISwitch) {
        
        // 1. Saving the data
        // Save the state of the switch in user defaults
        UserDefaults.standard.set(sender.isOn, forKey: KEY_DARK_MODE)
        updateUI()
    }
    
    func updateUI(){
        if mainSwitch.isOn{
            mainTitle.textColor = .white
            view.backgroundColor = .black
        } else{
            mainTitle.textColor = .black
            view.backgroundColor = .white
        }
    }

}

