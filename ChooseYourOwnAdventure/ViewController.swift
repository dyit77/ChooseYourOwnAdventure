//
//  ViewController.swift
//  ChooseYourOwnAdventure
//
//  Created by Dylan Kwan on 12/8/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var deathLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    var achievement = 0
    var deathCell = 0
    var deathOutside = 0
    var end = 0
    var answer = ""
    var fight = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleLabel.text = "Choose Your Own Adventure:\nThe Dungeon"
        var achCell = ""
        var achOut = ""
        if deathCell == 1 {
            achCell = "You encountered a creature in a cell"
        }
        if deathOutside == 1 {
            achOut = "You tried to leave the castle"
        }
        if achievement < 1 {
            deathLabel.text = "Event Log: \nNone"
        } else {
            deathLabel.text = "Event Log:\n\(achCell)\n\(achOut)\n\(answer)\n\(fight)"
        }
        if end == 1 {
            mainImage.image = UIImage(named: "skull")
        } else if end == 2 {
            mainImage.image = UIImage(named: "forest")
        } else if end == 3 {
            mainImage.image = UIImage(named: "beach")
        }
    }

}

