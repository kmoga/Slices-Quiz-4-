//
//  ViewController.swift
//  Slices (Quiz 4)
//
//  Created by SBAUser on 9/19/19.
//  Copyright © 2019 Kyle Moga. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var slices: UITextField!
    @IBOutlet weak var mouths: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func calculate(_ sender: UIButton) {
//        if let slices = Double(slices.text!) {
//            if let mouths = Double(mouths.text!) {
//                if mouths != 0 {
//                    resultLabel.text = "Everyone receives \(slices/mouths) slices."
//                } else {
//                    resultLabel.text = "Cannot divide pizza by 0."
//                }
//            } else {
//                resultLabel.text = "Please enter a valid number of mouths."
//            }
//        } else {
//            resultLabel.text = "Please enter a valid number of slices."
//        }
    guard let slices = Double(slices.text!) else {
    resultLabel.text = "Please enter a valid number of slices"
        return
    }
        guard let mouths = Double(mouths.text!) else {
            resultLabel.text = "Please enter a valid number of mouths"
            return
        }
        guard mouths != 0 else {
            resultLabel.text = "Cannot have 0 mouths. Its impossible!."
            return
        }
        guard slices != 0 else {
            resultLabel.text = "There is no pizza left. Should've gotten there sooner."
            return
        }
        resultLabel.text = "Everybody gets \(slices/mouths) slices."
}

}
