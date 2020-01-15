//
//  MemeDetailViewController.swift
//  memeMeV2
//
//  Created by Abdulrahman Alrifae on 20/10/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import Foundation
import UIKit

class MemeDetailViewController:  UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: Properties
    var meme: Meme!
    
    // MARK: Life Cycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
        
        self.imageView!.image = meme.memedImage
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
}
