//
//  ViewController.swift
//  Notifications
//
//  Created by lee bennett on 11/17/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let notification = UILocalNotification()
        notification.alertTitle = "hey"
        notification.alertBody = "whats going on"
        notification.fireDate = Date(timeIntervalSinceNow: 10)
        
        UIApplication.shared.scheduleLocalNotification(notification)
        
//        greetingLabel.text = "Hey everyone"
        
        greetingLabel.text = NSLocalizedString("Hey everyone", comment: "")
        
        
        // Do any additional setup after loading the view.
        
        
    }


}

