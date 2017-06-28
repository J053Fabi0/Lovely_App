//
//  RootPageViewController.swift
//  AppAsset
//
//  Created by Jose Fabio_ on 26/06/17.
//  Copyright © 2017 com.yoyomero.josefabio. All rights reserved.
//

import UIKit

class RootPageViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    lazy var viewControllerList:[UIViewController] = {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        let VCrs: [UIViewController] = [
            sb.instantiateViewController(withIdentifier: "Swipe"),
            sb.instantiateViewController(withIdentifier: "PonyNavigationController"),
            sb.instantiateViewController(withIdentifier: "MarioNavigationController")
        ]

        return VCrs
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        
        
        if let firstViewController: UIViewController = viewControllerList.first {
            self.setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
        
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let vcIndex = viewControllerList.index(of: viewController) else {return nil}
        
        let nextIndex = vcIndex + 1
        
        guard nextIndex != viewControllerList.count else {return viewControllerList[0]}
        
        guard nextIndex < viewControllerList.count else {return viewControllerList[0]}
        
        return viewControllerList[nextIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let vcIndex = viewControllerList.index(of: viewController) else {return nil}
        
        let previousIndex = vcIndex - 1
        
        guard previousIndex >= 0 else {return viewControllerList[viewControllerList.count - 1]}
        
        guard viewControllerList.count > previousIndex else {return viewControllerList[viewControllerList.count - 1]}
        
        return viewControllerList[previousIndex]
    }


}
