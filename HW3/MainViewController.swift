//
//  ViewController.swift
//  HW3
//
//  Created by Данил Прозоров on 15.12.2021.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTF.isSecureTextEntry = true
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let finalVC = segue.destination as! FinalViewController
        finalVC.welcome = loginTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func UserNameAction() {
        showAlert(title: "Your login:", message: "Danil")
    }
    
    @IBAction func PasswordAction() {
        showAlert(title: "Your password:", message: "Password")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard  let mainVC = segue.source as? FinalViewController else {return}
        loginTF.text = mainVC.end
        passwordTF.text = mainVC.end
        
    }
}
// MARK: - Private Methods
extension MainViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) 
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
