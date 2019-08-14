//
//  AnimalTableViewCell.swift
//  AC-iOS-Multiple-MVC
//
//  Created by albert coelho oliveira on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {

    @IBOutlet weak var animalInfo: UILabel!
    @IBOutlet weak var animalName: UILabel!
    @IBOutlet weak var animalImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
