//
//  ChoosePonyViewController.swift
//  AppAsset
//
//  Created by Jose Fabio_ on 26/06/17.
//  Copyright © 2017 com.yoyomero.josefabio. All rights reserved.
//

import UIKit

class ChoosePonyViewController: UIViewController {
    
    @IBOutlet var firePonyGif: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        firePonyGif.loadGif(name: "firePony")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
