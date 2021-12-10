//
//  GreenViewController.swift
//  Notifications
//
//  Created by lee bennett on 11/17/21.
//

import UIKit

class GreenViewController: UIViewController {

    var counter = 0
    
   
    

    @IBAction func incrementDidTapped(_ sender: UIButton) {
        counter += 1
        
        NotificationCenter.default.post(
            name: NSNotification.Name("increment"),
            object: self,
            userInfo: ["counter": counter])
    }
    

}
