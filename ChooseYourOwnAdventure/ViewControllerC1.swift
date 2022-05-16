//
//  ViewControllerC1.swift
//  ChooseYourOwnAdventure
//
//  Created by Dylan Kwan on 12/8/21.
//

import UIKit

class ViewControllerC1: UIViewController {
var sword = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "swordSegue" {
        let svc = segue.destination as! ViewControllerD1
            svc.sword = sword }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
