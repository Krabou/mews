//
//  EventTableViewCell.swift
//  projet app actus musique
//
//  Created by Amandine JUDITH on 30/07/2019.
//  Copyright © 2019 Amandine JUDITH. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {

    @IBOutlet weak var imageEvent: UIImageView!
    @IBOutlet weak var textEvent: UITextView!
    @IBOutlet weak var titleEvent: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
