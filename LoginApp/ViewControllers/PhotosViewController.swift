//
//  PhotosViewController.swift
//  LoginApp
//
//  Created by Юлия Алдохина on 27/01/22.
//

import UIKit

class PhotosViewController: UIViewController {

    @IBOutlet var imagesView: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for image in imagesView {
            image.layer.cornerRadius = image.frame.width/15
        }

       
    }
    

}
