//
//  ViewController.swift
//  loginWithFireBase
//
//  Created by Rajeev on 21/04/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var login: UIButton!
    
    @IBOutlet var creatAcount: UIButton!
    
    @IBOutlet var forget: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        login.layer.cornerRadius = 10
        creatAcount.layer.cornerRadius = 10
        forget.layer.cornerRadius = 10
    }


}

