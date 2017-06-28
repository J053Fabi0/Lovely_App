//
//  ViewController4.swift
//  AppAsset
//
//  Created by Jose Fabio_ on 25/06/17.
//  Copyright © 2017 com.yoyomero.josefabio. All rights reserved.
//

import UIKit

class SurpriseGifViewController: UIViewController {
    
    @IBOutlet var ohhGif: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        ohhGif.loadGif(name: "ohh")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
