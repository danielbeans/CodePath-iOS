//
//  PostCell.swift
//  Parstagram
//
//  Created by Daniel Williams on 10/7/21.
//  Copyright © 2021 Daniel Williams. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var captionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
