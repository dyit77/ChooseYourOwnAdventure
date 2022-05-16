//
//  ViewControllerF1.swift
//  ChooseYourOwnAdventure
//
//  Created by Dylan Kwan on 12/8/21.
//

import UIKit

class ViewControllerF1: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    var health = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        if health <= 0 {
            textLabel.text = "The corpse bursts into flame, silently withering away. The castle is overtaken by yellow circles, each appearing out of thin air. Eventually, you become trapped in the circles, unable to even see the floor, but then they start disappearing. Once all the circles are gone, you find yourself in a forest, each tree nothing more than a dead spire of wood. The air is cold. You start walking forward, choosing a random direction.\n\nYOU ARE FREE"
        } else {
            textLabel.text = "You stop your attacks.\n\n\"So you give up. Unfortunately, I can’t let such an insult go unanswered.\"\n\nIts eyes turn red, and it waves in your direction. You go flying, but then you realize you can see your headless body fall over. You lose consciousness before you hit the ground.\n\nYOU DIED"
            
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let hvc = segue.destination as! ViewController
        hvc.achievement = 1
        if health <= 0 {
            hvc.fight = "Liberated the Guardian"
            hvc.end = 2
        } else {
            hvc.fight = "Insulted the Guardian"
            hvc.end = 1
        }
    }
}
