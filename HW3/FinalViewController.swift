//
//  FinalViewController.swift
//  HW3
//
//  Created by Данил Прозоров on 15.12.2021.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var welcome:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let welcome = welcome else {return}
        welcomeLabel.text = "Welcome, \(welcome)!"
    }
    

}
