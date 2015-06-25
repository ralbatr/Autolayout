//
//  ViewController.swift
//  Autolayout
//
//  Created by Ralbatr on 15/6/24.
//  Copyright (c) 2015年 ralbatr Yi. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    
    @IBAction func login() {
        
    }
    @IBAction func toggleSecure(sender: UIButton) {
        
        secure = !secure
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    var secure = false {
        didSet {
            updateUI()
        }
    }
    
    private func updateUI() {
        passwordField.secureTextEntry = secure
        passwordLabel.text = secure ? "Secure password" :"password"
    }
}

