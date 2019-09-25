//
//  Table1ViewCell.swift
//  Final Version
//
//  Created by Subhi Abusalem on 9/23/19.
//  Copyright © 2019 Subhi Abusalem. All rights reserved.
//

import UIKit

class Table1ViewCell: UITableViewCell {
    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var label1: UILabel!
    
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label2T1: UILabel!
    
    @IBOutlet weak var Label1T1: UILabel!
    
    @IBOutlet weak var img1T1: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
