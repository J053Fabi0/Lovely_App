//
//  ChooseMarioViewController.swift
//  AppAsset
//
//  Created by Jose Fabio_ on 27/06/17.
//  Copyright © 2017 com.yoyomero.josefabio. All rights reserved.
//

import UIKit

class ChooseMarioViewController: UIViewController {

    @IBOutlet var marioGif: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        marioGif.loadGif(name: "marioGiradorPixel")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
