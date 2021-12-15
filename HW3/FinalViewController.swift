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
    var end:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let welcome = self.welcome else {return}
        welcomeLabel.text = "Welcome \(welcome)!"

    }
    

}
