//
//  ChannelVC.swift
//  smack-it
//
//  Created by Krishna Torrence on 1/16/19.
//  Copyright © 2019 Krishna Torrence. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    //Outlets
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //The space for the menu
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60

    }
    @IBAction func loginBtnPressed(_ sender: Any) {
        //Segue to the login VC
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
}
