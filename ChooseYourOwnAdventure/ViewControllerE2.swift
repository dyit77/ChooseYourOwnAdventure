//
//  ViewControllerE2.swift
//  ChooseYourOwnAdventure
//
//  Created by Dylan Kwan on 12/8/21.
//

import UIKit

class ViewControllerE2: UIViewController {
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var fightLabel: UILabel!
    @IBOutlet weak var healthLabel: UILabel!
    @IBOutlet weak var swordLabel: UILabel!
    var sword = 0
    var health = 500
    override func viewDidLoad() {
        super.viewDidLoad()
        if sword == 1 {
            swordLabel.text = "Your sword cuts it in half, but its halves rebound back together once your sword finishes its slice.\n\"Where did you get that? Don’t sully that blade with your dirty hands.\"\nIt hisses at you."
        } else if sword == 0 {
            swordLabel.text = "You rush the figure and punch it. Your fist goes through it, but you feel slight resistance.\n\"You want to fight? Alright, if it makes you feel better.\""
        }
        healthLabel.text = "Guardian Health: \(health)/500\n[Swipe to attack]"
        fightLabel.text = ""
        bodyLabel.text = ""
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func swipeGesture(_ sender: Any) {
        if sword == 1 {
            health -= 50
            fightLabel.text = "You slash it. It's very effective."
            healthLabel.text = "Guardian Health: \(health)/500\n[Swipe to attack]"
        } else {
            health -= 1
            fightLabel.text = "You punch it. It doesn’t seem very effective."
            healthLabel.text = "Guardian Health: \(health)/500\n[Swipe to attack]"
        }
        if health == 0 {
            bodyLabel.text = "You defeat the Guardian. It falls over dead."
        } else if health < 0 {
            bodyLabel.text = "You defeat the Guardian. It falls over dead. You hit the corpse again for good measure."
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let evc = segue.destination as! ViewControllerF1
        evc.health = health
    }
}
