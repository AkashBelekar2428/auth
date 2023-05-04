//
//  ViewController.swift
//  Authentications
//
//  Created by akashbelekar2428 on 05/02/2023.
//  Copyright (c) 2023 akashbelekar2428. All rights reserved.
//

import UIKit
import Authentications

class ViewController: UIViewController {

    @IBOutlet weak var containerView:UIView!
    
    var eamiladdress = Email_Address()
    override func viewDidLoad() {
        super.viewDidLoad()
        let frame = containerView.bounds
        self.eamiladdress.frame = frame
        containerView.addSubview(eamiladdress)
    
        
    }

}

