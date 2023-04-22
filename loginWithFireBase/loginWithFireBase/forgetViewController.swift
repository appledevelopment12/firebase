//
//  forgetViewController.swift
//  loginWithFireBase
//
//  Created by Rajeev on 21/04/23.
//

import UIKit
import Firebase

class forgetViewController: UIViewController {

    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func forgetClicked(_ sender:UIButton)
    {

//        guard let email = emailTextField.text else{ return }
//        guard let password = passwordTextField.text else {return}
        

        Auth.auth().sendPasswordReset(withEmail: emailTextField.text!) { (error) in
            if error == nil {
                print(" SENT....!")
            }
            else
            {
                print("Failed - \(String(describing: error?.localizedDescription))")
            }
        }
        
        
    }


}
