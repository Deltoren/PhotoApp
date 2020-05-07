//
//  PhotoEditorController.swift
//  PhotoEditorApp
//
//  Created by Sergio Ramos on 03/05/2020.
//  Copyright © 2020 Sergio Ramos. All rights reserved.
//

import UIKit

class PhotoEditorController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var imageViewSecond: UIImageView!
    
    
    var turn: (CGFloat) = 0
    var newImage: UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageViewSecond.image = newImage
        
        view.setGradientBackground(colorOne: UIColor(red: 45.0/255.0, green: 0.0/255.0, blue: 95.0/255.0, alpha: 1.0), colorTwo: UIColor(red: 75.0/255.0, green: 40.0/255.0, blue: 85.0/255.0, alpha: 1.0))
    }
    
    @IBAction func turnLeftButton(_ sender: UIButton) {
        turn += .pi / 2
        imageViewSecond.transform = CGAffineTransform.init(rotationAngle: turn)
    }
    
    
    @IBAction func turnRightButton(_ sender: UIButton) {
        turn -= .pi / 2
        imageViewSecond.transform = CGAffineTransform.init(rotationAngle: turn)
    }
    
    
}
