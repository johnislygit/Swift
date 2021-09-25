//
//  RedViewController.swift
//  RainbowTab
//
//  Created by John Ly on 11/4/20.
//  Copyright © 2020 John Ly. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabBarItem.badgeValue = "!"
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarItem.image = UIImage(systemName: "r.square.fill")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        tabBarItem.badgeValue = nil
        tabBarItem.image = UIImage(systemName: "r.square")
    }
}

