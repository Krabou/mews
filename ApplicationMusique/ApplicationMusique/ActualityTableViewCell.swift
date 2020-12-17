//
//  ActualityTableViewCell.swift
//  exo actu
//
//  Created by Karima Krachai on 25/07/2019.
//  Copyright © 2019 Karima Krachai. All rights reserved.
//

import UIKit

class ActualityTableViewCell: UITableViewCell {
    
    @IBOutlet weak var backCell: UIView!
    @IBOutlet weak var titleActu: UILabel!
    @IBOutlet weak var imageActu: UIImageView!
    @IBOutlet weak var textActu: UITextView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
