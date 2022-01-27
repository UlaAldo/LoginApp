//
//  ViewController.swift
//  LoginApp
//
//  Created by Юлия Алдохина on 20/01/22.
//

import UIKit

class MainViewController: UIViewController {

// MARK: - IB Outlets
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
  
// MARK: - Private Properties
    
    private let user = "Mentor"
    private let password = "SWIFT"

// MARK: - Navigation
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.autocorrectionType = .no
        passwordTextField.autocorrectionType = .no
        passwordTextField.delegate = self
        nameTextField.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let enterVC = segue.destination as? EnterViewController else { return }
        enterVC.name = user
    }
    
// MARK: - IB Actions
    
    @IBAction func logInButtonPressed() {
        guard user == nameTextField.text && password == passwordTextField.text else {
            showAlert(with: "Invalid Username or Password", and: "Try again")
            passwordTextField.text = ""
            return
        }
    }
    
    @IBAction func nameButtonPressed() {
        showAlert(with: "Secret message!", and: "Your name is Mentor")
    }
    
    @IBAction func passwordButtonPressed() {
        showAlert(with: "Don't tell anyone!", and: "Your password is SWIFT")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
//        guard let _ = segue.source as? EnterViewController else { return }
        nameTextField.text = ""
        passwordTextField.text = ""
    }
    
// MARK: - Private Methods
    
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
// MARK: - UITextFieldDelegate

extension MainViewController : UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            passwordTextField.resignFirstResponder()
            logInButtonPressed()
            performSegue(withIdentifier: "here", sender: nil)
        }
        return true

        }
}


