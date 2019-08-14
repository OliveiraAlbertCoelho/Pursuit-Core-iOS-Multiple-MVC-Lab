//
//  AnimalTableViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by albert coelho oliveira on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalTableViewController: UITableViewController {
    var animalz = ZooAnimal.zooAnimals
    let amphibians = ZooAnimal.amphibians
    let birds = ZooAnimal.birds
    let mammals = ZooAnimal.mammals
    let reptiles = ZooAnimal.reptiles
    let insects = ZooAnimal.insects
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return  ZooAnimal.amphibians.count
        case 1:
            return ZooAnimal.birds.count
        case 2:
            return ZooAnimal.insects.count
        case 3:
            return ZooAnimal.mammals.count
        case 4:
            return ZooAnimal.reptiles.count
        default:
            return 0
        }
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch  section {
        case 0:
            return "amphibians"
        case 1:
            return "birds"
        case 2:
            return "insects"
        case 3:
            return "mammals"
        case 4:
            return "reptiles"
        default:
            return "nothing"
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
        case 0:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? AnimalTableViewCell{
                cell.animalInfo.text = amphibians[indexPath.row].origin
                cell.animalName.text = amphibians[indexPath.row].name
                cell.animalImage.image = UIImage(named: String(amphibians[indexPath.row].imageNumber))
                return cell
            }
        case 1:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? AnimalTableViewCell{
                cell.animalInfo.text = birds[indexPath.row].origin
                cell.animalName.text = birds[indexPath.row].name
                cell.animalImage.image = UIImage(named: String(birds[indexPath.row].imageNumber))
                return cell
            }
        case 2:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? AnimalTableViewCell{
                cell.animalInfo.text = insects[indexPath.row].origin
                cell.animalName.text = insects[indexPath.row].name
                cell.animalImage.image = UIImage(named: String(insects[indexPath.row].imageNumber))
                return cell
            }
        case 3:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? AnimalTableViewCell{
                cell.animalInfo.text = mammals[indexPath.row].origin
                cell.animalName.text = mammals[indexPath.row].name
                cell.animalImage.image = UIImage(named: String(mammals[indexPath.row].imageNumber))
                return cell
            }
        case 4:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? AnimalTableViewCell{
                cell.animalInfo.text = reptiles[indexPath.row].origin
                cell.animalName.text = reptiles[indexPath.row].name
                cell.animalImage.image = UIImage(named: String(reptiles[indexPath.row].imageNumber))
                return cell
            }
            
        default:
            return UITableViewCell()
        }
        return UITableViewCell()
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let segueIdentifier = segue.identifier else { fatalError("No identifier in segue") }
        switch segueIdentifier {
        case "animalSeg":
            guard let animalVc = segue.destination as? AnimalViewController else {
                fatalError("Unexpected segue VC")
            }
            guard let selectedIndexPath = tableView.indexPathForSelectedRow else {
                fatalError("No row was selected")
            }
            switch selectedIndexPath.section{
            case 0:
                animalVc.animal = amphibians[selectedIndexPath.row]
            case 1:
                animalVc.animal = birds[selectedIndexPath.row]
            case 2:
                animalVc.animal = insects[selectedIndexPath.row]
            case 3:
                animalVc.animal = mammals[selectedIndexPath.row]
                
            case 4:
                animalVc.animal = reptiles[selectedIndexPath.row]
                
            default:
                ""
            }

default:
fatalError("Unexpected segue identifier")
}
}

}
