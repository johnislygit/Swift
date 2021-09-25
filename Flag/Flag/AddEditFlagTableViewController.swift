//
//  AddEditFlagTableViewController.swift
//  Flag
//
//  Created by John Ly on 11/22/20.
//  Copyright © 2020 John Ly. All rights reserved.
//

import UIKit

class AddEditFlagTableViewController: UITableViewController, UIPickerViewDelegate {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var capitalTextField: UITextField!
    
    @IBOutlet weak var symbolTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var flag: Flag?
    var flagSection: String?

    override func viewDidLoad() {
        super.viewDidLoad()
      
            
        
        if let flag = flag {
            title = "Edit Flag"
            symbolTextField.text = flag.symbol
            nameTextField.text = flag.name
            capitalTextField.text = flag.capital
        
   
    }
        
        updateSaveButtonState()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func updateSaveButtonState() {
        let nameText = nameTextField.text ?? ""
        let capitalText = capitalTextField.text ?? ""
        let symbolText = symbolTextField.text ?? ""
        saveButton.isEnabled = !nameText.isEmpty && !capitalText.isEmpty  && !symbolText.isEmpty
    }
    
    @IBAction func textEditingChanged(_ sender: UITextField) {
        updateSaveButtonState()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for:segue, sender: sender)
        guard segue.identifier == "saveUnwind" else {return}
        let symbol = symbolTextField.text ?? ""
        let name = nameTextField.text ?? ""
        let capital = capitalTextField.text ?? ""
        
        
        flag = Flag(symbol: symbol, name: name , capital: capital)
       
        
        
    }
    
    
}

