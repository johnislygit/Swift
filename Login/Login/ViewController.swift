//
//  ViewController.swift
//  Login
//
//  Created by John Ly on 11/1/20.
//  Copyright © 2020 John Ly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
         
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = usernameTxt.text
        }
    }
        

    @IBAction func forgotUsernameAction(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotUsernamePassword", sender: forgotUsernameButton)
    }
    
    @IBAction func forgotPasswordAction(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotUsernamePassword", sender: forgotPasswordButton)
    }
    
    
    
    
}

