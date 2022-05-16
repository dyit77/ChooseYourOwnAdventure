//
//  ViewControllerD1.swift
//  ChooseYourOwnAdventure
//
//  Created by Dylan Kwan on 12/8/21.
//

import UIKit

class ViewControllerD1: UIViewController {
    @IBOutlet weak var answerTextField: UITextField!
    var sword = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "swordSegue" {
            let svc = segue.destination as! ViewControllerE2
            svc.sword = sword
        } else if segue.identifier == "answerSegue" {
            let rvc = segue.destination as! ViewControllerE1
            rvc.answer = answerTextField.text!
        }
    }
    
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func tapGesture(_ sender: Any) {
        answerTextField.resignFirstResponder()
    }
}
