//
//  ViewController.swift
//  Light
//
//  Created by John Ly on 9/9/20.
//  Copyright © 2020 John Ly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var LightOn = true
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateUI()
        // Do any additional setup after loading the view.
    }


    fileprivate func UpdateUI() {
       view.backgroundColor = LightOn ? .white : .black

    }
    
    @IBAction func ClickButton(_ sender: Any) {
        LightOn.toggle()
        UpdateUI()
    }
}

