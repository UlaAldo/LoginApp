//
//  EnterViewController.swift
//  LoginApp
//
//  Created by Юлия Алдохина on 20/01/22.
//

import UIKit

class EnterViewController: UIViewController {
    
    @IBOutlet var logOutButton: UIButton!
    @IBOutlet var welcomeLabel: UILabel!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(name)!"
    }
}
