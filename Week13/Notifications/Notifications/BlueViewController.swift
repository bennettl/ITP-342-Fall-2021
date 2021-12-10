//
//  BlueViewController.swift
//  Notifications
//
//  Created by lee bennett on 11/17/21.
//

import UIKit

class BlueViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(counterDidIncrement(_:)), name: NSNotification.Name("increment"), object: nil)
    }
    
    
    @objc func counterDidIncrement(_ notification: Notification){
        let counter = notification.userInfo!["counter"] as! Int
        
        counterLabel.text = "Counter \(counter)"
        
        print("counterDidIncrement \(notification)")
    }

    

}
