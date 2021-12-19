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
    
    private let login = "Danil"
    private let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTF.isSecureTextEntry = true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let finalVC = segue.destination as! FinalViewController
        finalVC.welcome = loginTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInPressed() {
        if loginTF.text != login || passwordTF.text != password {
            showAlert(title: "Invalid login or password!",
                      message: "Please, enter correct login or password.",
                      textField: passwordTF)
        }
    }

    @IBAction func userNameAction() {
        showAlert(title: "Your login:", message: "Danil")
    }
    
    @IBAction func passwordAction() {
        showAlert(title: "Your password:", message: "Password")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
        
    }
}
// MARK: - Private Methods
extension MainViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) {
           _ in textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginTF {
            passwordTF.becomeFirstResponder()
        } else {
            logInPressed()
            performSegue(withIdentifier: "showFinalVC", sender: nil)
        }
        return true
    }
}
