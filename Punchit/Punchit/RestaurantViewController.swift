//
//  ViewController.swift
//  Punchit
//
//  Created by Avinash Jain on 3/15/16.
//  Copyright © 2016 Avinash Jain. All rights reserved.
//

import UIKit
import Firebase
import MapKit

class RestaurantTableViewCell: UITableViewCell {

    @IBOutlet var Title: UILabel!
        
    @IBOutlet var Address: UILabel!
    
    @IBOutlet var Distance: UILabel!
    
    @IBOutlet var Logo: UIImageView!
    

}

class RestaurantViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, CLLocationManagerDelegate {
    
    var names = NSArray() as! [String]
    var address = NSArray() as! [String]
    var distance = NSArray() as! [String]
    var logo = NSArray() as! [NSURL]
    
    let locationManager = CLLocationManager()
    
    @IBOutlet var tableView: UITableView!
    
    var myRootRef = Firebase(url:"https://punch-it.firebaseio.com/")
    
    var businesses: [Business]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.locationManager.requestAlwaysAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        }
        
        
        
        var nib = UINib(nibName: "RestaurantTableViewCell", bundle: nil)
        
        tableView.registerNib(nib, forCellReuseIdentifier: "cell")
        
        getYelpData()
        
                   }
        
        /* Example of Yelp search with more search options specified
        Business.searchWithTerm("Restaurants", sort: .Distance, categories: ["asianfusion", "burgers"], deals: true) { (businesses: [Business]!, error: NSError!) -> Void in
        self.businesses = businesses
        
        for business in businesses {
        print(business.name!)
        print(business.address!)
        }
        }
        */
    

func getYelpData() {

    Business.searchWithTerm("food", sort: .Distance, categories:["food"], deals: false) { (businesses: [Business]!, error: NSError!) -> Void in
        self.businesses = businesses
        
        for business in businesses {
            self.names.append(business.name!)
            self.address.append(business.address!)
            self.distance.append(business.distance!)
            self.logo.append(business.ratingImageURL!)
            
            print(business.name!)
            print(business.address!)
            print(business.ratingImageURL)
            print(business.reviewCount)
        }
        
        self.tableView.reloadData()
    }

}

    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        var locValue: CLLocationCoordinate2D = manager.location!.coordinate
        NSUserDefaults.standardUserDefaults().setObject(locValue.latitude, forKey: "latitude")
        NSUserDefaults.standardUserDefaults().setObject(locValue.longitude, forKey: "longitude")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        getYelpData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if names.count == 0{
            return 0
        }
        else {
            return names.count
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
         var cell:RestaurantTableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as! RestaurantTableViewCell
        cell.Title.text = self.names[indexPath.row]
        cell.Address.text = self.address[indexPath.row]
        cell.Distance.text = self.distance[indexPath.row]
        cell.Logo.image = UIImage(data: NSData(contentsOfURL: logo[indexPath.row])!)
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 90.0
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print(indexPath.row)
    }
    
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

