//
//  ViewController.swift
//  Test
//
//  Created by lee bennett on 9/22/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.accessibilityIdentifier = HW3AccessibilityIdentifiers.messageLabel
    }


}

