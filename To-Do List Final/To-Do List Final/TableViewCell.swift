//
//  TableViewCell.swift
//  FinalProject
//
//  Created by John Ly on 12/14/20.
//  Copyright © 2020 John Ly. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    var taskDone: Bool = false
    var taskPriority: Bool = false
    @IBAction func PriorityButtonPressed() {
        taskPriority = !taskPriority
        if taskPriority {
            priorityButton.setBackgroundImage(UIImage(named: "flagFILLED"), for: .normal)
        }
        else {
            priorityButton.setBackgroundImage(UIImage(named: "flagOUTLINE"), for: .normal)
        }
    }
       
    @IBAction func TaskButtonPressed() {
        taskDone = !taskDone
        if taskDone {
               taskCheckButton.setBackgroundImage(UIImage(named: "checkBoxFILLED"), for: .normal)
        }
        else {
               taskCheckButton.setBackgroundImage(UIImage(named: "checkBoxOUTLINE"), for: .normal)
        }
    }
       
       
    @IBOutlet weak var priorityButton: UIButton!
       
    @IBOutlet weak var taskCheckButton: UIButton!
       
    @IBOutlet weak var taskName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
