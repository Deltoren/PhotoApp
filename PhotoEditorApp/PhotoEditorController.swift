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
