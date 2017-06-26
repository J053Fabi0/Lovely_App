//
//  RootPageViewController.swift
//  AppAsset
//
//  Created by Jose Fabio_ on 23/06/17.
//  Copyright © 2017 com.yoyomero.josefabio. All rights reserved.
//



import UIKit

class RootPageViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    lazy var viewControllerList: [UIViewController] = {
        
        let sb = UIStoryboard(name: "Main", bundle: nil) //Story Board
        
        let VCrs: [UIViewController] = [ //View Controllers
            sb.instantiateViewController(withIdentifier: "Swipe"),
            sb.instantiateViewController(withIdentifier: "Fluttershy"),
            sb.instantiateViewController(withIdentifier: "PinkiePie"),
            sb.instantiateViewController(withIdentifier: "AppleJack")]
        
        return VCrs
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self
        
        if let firstViewController: UIViewController = viewControllerList.first{
            self.setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let vcIndex = viewControllerList.index(of: viewController) else {return nil}
        
        let previousIndex = vcIndex - 1
        
        guard previousIndex >= 1 else {return viewControllerList[viewControllerList.count - 1]} //if P.I. is not greater than 1, no 0, we return the last view, we wont let the view 0 is shown because is the swipeView
        
        guard viewControllerList.count > previousIndex else {return nil}
        
        return viewControllerList[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let vcIndex = viewControllerList.index(of: viewController) else {return nil}
        
        let nextIndex = vcIndex + 1
        
        guard viewControllerList.count != nextIndex else {return viewControllerList[1]} //if the count is the nextIndex, then we return the second view ([1]), the first ([0]) is the swipeView, so we dont want it to be shown
        
        guard viewControllerList.count > nextIndex else {return nil}
        
        return viewControllerList[nextIndex]
    }
    

}
