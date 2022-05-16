//
//  ViewControllerD3.swift
//  ChooseYourOwnAdventure
//
//  Created by Dylan Kwan on 12/8/21.
//

import UIKit

class ViewControllerD3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let hvc = segue.destination as! ViewController
        hvc.achievement = 1
        hvc.deathOutside = 1
        hvc.end = 1
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
