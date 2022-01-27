//
//  GratefullViewController.swift
//  LoginApp
//
//  Created by Юлия Алдохина on 27/01/22.
//

import UIKit

class GratefullViewController: UIViewController {
    
    @IBOutlet var textView: UITextView!
    
    var thxText: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        textView.layer.cornerRadius = textView.frame.width/15
        textView.text = thxText.person.thx
    }
    
}
