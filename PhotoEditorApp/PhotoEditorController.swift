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
    
    var newImage: UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageViewSecond.image = newImage
    }
    
    var turnLeft: (CGFloat) = -.pi / 2
    @IBAction func turnLeftButton(_ sender: UIButton) {
        imageViewSecond.transform = CGAffineTransform.init(rotationAngle: turnLeft)
        turnLeft -= .pi / 2
    }
    
}
