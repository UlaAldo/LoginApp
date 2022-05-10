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
//        navigationItem.backBarButtonItem?.tintColor = UIColor(red: 150, green: 170, blue: 12, alpha: 1)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let photoVC = segue.destination as? PhotosViewController else { return }
        photoVC.photo = hobby
    }
}
