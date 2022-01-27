//
//  HobbyViewController.swift
//  LoginApp
//
//  Created by Юлия Алдохина on 27/01/22.
//

import UIKit

class HobbyViewController: UIViewController {

    @IBOutlet var hobbyLabel: UILabel!
    
    var hobby: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        hobbyLabel.text = hobby.person.hobby

    }
    



}
