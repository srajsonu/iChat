//
//  WelcomeViewController.swift
//  iChat
//
//  Created by ARY@N on 04/02/19.
//  Copyright © 2019 ARYAN. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var emailTextView: UITextField!
    
    @IBOutlet weak var passwordTextView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        if emailTextView.text != "" && passwordTextView.text != "" {
            
            loginUser()
            
        }else {
            SVProgressHUD.showError(withStatus: "Email and password Required")
        }
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        Auth.auth().createUser(withEmail: emailTextView.text!, password: passwordTextView.text!) { (user, error) in
            
            if error != nil{
                print(error!)
            }else{
                print("Registration Successfull")
            }
        }
    }
    
    func loginUser(){
        
        SVProgressHUD.setStatus("Loging...")
    }
    func registerUser(){
        
        
    }
}
