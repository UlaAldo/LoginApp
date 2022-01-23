//
//  EnterViewController.swift
//  LoginApp
//
//  Created by Юлия Алдохина on 20/01/22.
//

import UIKit

class EnterViewController: UIViewController {

    @IBOutlet var logOutButton: UIButton!
    @IBOutlet var welcomeText: UITextField!
    
    var text: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeText.text = text
    }
    
    
}
