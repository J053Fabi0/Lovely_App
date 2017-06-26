//
//  SwipeViewController.swift
//  AppAsset
//
//  Created by Jose Fabio_ on 25/06/17.
//  Copyright © 2017 com.yoyomero.josefabio. All rights reserved.
//

import UIKit

class SwipeViewController: UIViewController {
    
    @IBOutlet var swipeGif: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        swipeGif.loadGif(name: "swipe")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
