//
//  MemeDetailsController.swift
//  Mememe1.0
//
//  Created by Ghaida Almahmoud on 22/04/2019.
//  Copyright © 2019 Udacity. All rights reserved.
//


import UIKit

class DetailViewController: UIViewController {
    
    var memes: Meme!
    
    @IBOutlet weak var showImage: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        showImage.image = memes.memedImage
        self.tabBarController?.tabBar.isHidden = true
        
    }
    
}
