//
//  ChatVC.swift
//  smack-it
//
//  Created by Krishna Torrence on 1/16/19.
//  Copyright © 2019 Krishna Torrence. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //The button for the menu (toggle the menu)
        menuBtn.addTarget(self.revealViewController(), action: #selector(revealViewController().revealToggle(_:)), for: .touchUpInside)
        //sliding gestures
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
        //Add check to see if the user is still logged in
        if AuthService.instance.isLoggedIn {
            AuthService.instance.findUserByEmail (completion: { (success) in
                NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
            })
        }
        MessageService.instance.findAllChannel { (success) in
            
        }
    }
    
}
