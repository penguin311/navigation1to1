//
//  ViewController.swift
//  navigation1to1
//
//  Created by SWUCOMPUTER on 25/03/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var hamChicken: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toOrderView"{
            let destVC = segue.destination as! OrderViewController
            
            let varLabel = hamChicken.titleForSegment(at: hamChicken.selectedSegmentIndex)!
            
            destVC.title = varLabel
            
            var varLabel2 = "Thanks\n Your Order List : <"
            varLabel2 += varLabel
            varLabel2 += ">, is right?"
            
            destVC.info = varLabel2
        }
    }

    

}

