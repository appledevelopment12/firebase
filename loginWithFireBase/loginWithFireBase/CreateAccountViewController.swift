//
//  CreateAccountViewController.swift
//  loginWithFireBase
//
//  Created by Rajeev on 21/04/23.
//

import UIKit
import Firebase

class CreateAccountViewController: UIViewController {

    
    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func signupClick(_ sender: UIButton)
    {
        
        guard let email = emailTextField.text else{ return }
        guard let password = passwordTextField.text else {return}
        
        Auth.auth().createUser(withEmail: email, password: password) { firebaseResult, error in
            if let e = error
            {
                print("error")
            }
            else
            {
                self.performSegue(withIdentifier: "goToNext", sender: self)
            }
        }
    }
    

}
