//
//  FlagTableViewCell.swift
//  Flag
//
//  Created by John Ly on 11/22/20.
//  Copyright © 2020 John Ly. All rights reserved.
//

import UIKit

class FlagTableViewCell: UITableViewCell {

    @IBOutlet var symbolLabel: UILabel!
    @IBOutlet var capitalLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    
    func update(with flag: Flag) {
        symbolLabel.text = flag.symbol
        nameLabel.text = flag.name
        capitalLabel.text = flag.capital
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
