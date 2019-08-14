//
//  AnimalViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by albert coelho oliveira on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    var animal: ZooAnimal!
    @IBOutlet weak var animalLabelName: UILabel!
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var animalDescript: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpDesign()
    }
    private func setUpDesign() {
        animalLabelName.text = animal.name
        animalDescript.text = animal.info
        animalImage.image = UIImage(named: String(animal.imageNumber))
    }


}
