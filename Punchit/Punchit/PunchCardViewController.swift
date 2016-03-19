//
//  PunchCardViewController.swift
//  Punchit
//
//  Created by Avinash Jain on 3/15/16.
//  Copyright © 2016 Avinash Jain. All rights reserved.
//

import UIKit

class PunchCardViewController: UIViewController, UIPageViewControllerDataSource {
    
    var pageViewController : UIPageViewController!
    var pageRestaurants: NSArray!
    var pagePunches: NSArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pageRestaurants = NSArray(objects: "Maggiano", "Olive Garden", "Golden Chopsticks")
        self.pagePunches = NSArray(objects: "3/10", "8/12", "3/10")
        
        self.pageViewController = self.storyboard?.instantiateViewControllerWithIdentifier("PageViewController") as! UIPageViewController
        
        self.pageViewController.dataSource = self
        var startVC = self.viewControllerAtIndex(0) as! PCContentViewController
        var viewControllers = NSArray(object: startVC)
        
        self.pageViewController.setViewControllers(viewControllers as! [UIViewController], direction: .Forward, animated: true, completion: nil)
        
        self.pageViewController.view.frame = CGRectMake(0,30,self.view.frame.width, self.view.frame.height - 88)
        
        self.addChildViewController(self.pageViewController)
        self.view.addSubview(self.pageViewController.view)
        self.pageViewController.didMoveToParentViewController(self)
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func viewControllerAtIndex(index:Int) -> PCContentViewController {
        
        if ((self.pageRestaurants.count == 0) || index >= self.pageRestaurants.count){
            return PCContentViewController()
        }
        
        var vc: PCContentViewController = self.storyboard?.instantiateViewControllerWithIdentifier("PCContentViewController") as! PCContentViewController
        vc.restaurantText = self.pageRestaurants[index] as! String
        vc.punchedText = self.pagePunches[index] as! String
        vc.pageIndex = index
        return vc
    }
    
    
    //MARK: - Page View Controller Data Source
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        var vc = viewController as! PCContentViewController
        var index = vc.pageIndex as Int
        
        if (index == 0) || index == NSNotFound {
            return nil
        }
        
        index--
        return self.viewControllerAtIndex(index)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        var vc = viewController as! PCContentViewController
        var index = vc.pageIndex as Int
        
        if index == NSNotFound {
            return nil
        }
        
        index++
        if index == self.pageRestaurants.count {
            return nil
        }
        
        return self.viewControllerAtIndex(index)
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return self.pageRestaurants.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
