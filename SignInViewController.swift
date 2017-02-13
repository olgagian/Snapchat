//
//  SignInViewController.swift
//  Snapchat
//
//  Created by ioannis giannakidis on 02/02/2017.
//  Copyright © 2017 ioannis giannakidis. All rights reserved.
//

import UIKit
import Firebase


class SignInViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func turnUpTapped(_ sender: Any) {
        
        FIRAuth.auth()?.signIn(withEmail: emailTextField.text!, password: passwordTextField.text!, completion: { (user, error) in
            print("We tried to siong in")
            if error != nil {
                print("Hey we have an error:\(error)")
                FIRAuth.auth()?.createUser(withEmail: self.emailTextField.text!, password: self.passwordTextField.text!, completion: { (user, error) in
                    print("we tried to create a user")
                    if error != nil {
                        print("Hey we have an error:\(error)")
                    }else {
                        print("Crated user successfully")
                        self.performSegue(withIdentifier: "signinsegue", sender: nil)
                    }
                })
            }else {
                print("Sign in successfully")
                self.performSegue(withIdentifier: "signinsegue", sender: nil)
            }
        })
    }

}

