//
//  ViewController.swift
//  Amusement Park Entry
//
//  Created by Tom Bastable on 25/04/2019.
//  Copyright © 2019 Tom Bastable. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
// Test Passes - complete passes.
    
let completeClassicGuest = classicGuest()
let completeVipGuest = vipGuest()
let completeChildFree = try! freeChildGuest(dateOfBirth: Date())
let completeFoodService = try! foodServiceEmployee(firstName: "Tom", lastName: "Bastable", streetAddress: "123 Planet Hoth", city: "Cloud City", state: "Bespin", zipPostCode: "12Parsecs")
let completeRideService = try! rideServiceEmployee(firstName: "Tom", lastName: "Bastable", streetAddress: "123 Planet Hoth", city: "Cloud City", state: "Bespin", zipPostCode: "12Parsecs")
let completeMaintenance = try! maintenanceEmployee(firstName: "Tom", lastName: "Bastable", streetAddress: "123 Planet Hoth", city: "Cloud City", state: "Bespin", zipPostCode: "12Parsecs")
let completeManager = try! managerEmployee(firstName: "Tom", lastName: "Bastable", streetAddress: "123 Planet Hoth", city: "Cloud City", state: "Bespin", zipPostCode: "12Parsecs")

// Test Passes - incomplete, error ridden passes.
    
let incompleteChildFree = try! freeChildGuest(dateOfBirth: Date())
let incompleteFoodService = try! foodServiceEmployee(firstName: "Tom", lastName: "Bastable", streetAddress: "123 Planet Hoth", city: "Cloud City", state: "Bespin", zipPostCode: "")
let incompleteRideService = try! rideServiceEmployee(firstName: "", lastName: "Bastable", streetAddress: "123 Planet Hoth", city: "Cloud City", state: "Bespin", zipPostCode: "12Parsecs")
let incompleteMaintenance = try! maintenanceEmployee(firstName: "Tom", lastName: "Bastable", streetAddress: "123 Planet Hoth", city: "Cloud City", state: "", zipPostCode: "12Parsecs")
let incompleteManager = try! managerEmployee(firstName: "Tom", lastName: "", streetAddress: "123 Planet Hoth Rd", city: "Cloud City", state: "Bespin", zipPostCode: "12Parsecs")
    
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        passSwipe(swipeLocation: .amusementAreas, pass: incompleteManager)
        passSwipe(swipeLocation: .officeAreas, pass: completeVipGuest)
        
    }
    
    

    
    

}

