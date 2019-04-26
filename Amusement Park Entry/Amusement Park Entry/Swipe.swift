//
//  Swipe.swift
//  Amusement Park Entry
//
//  Created by Tom Bastable on 26/04/2019.
//  Copyright © 2019 Tom Bastable. All rights reserved.
//

import Foundation

func passSwipe(swipeLocation: AreaAccess, pass: Entrant){
    
    // Break up pass data
    var entrantName: String = ""
    var entrantAddress: String = ""
    var entrantAreaAccess: [AreaAccess] = []
    var entrantDoesHaveAccess: Bool = false
    var entrantRideAccess: Bool = false
    var entrantMerchDiscount: Double = 0.0
    var entrantFoodDiscount: Double = 0.0
    var entrantQueueSkip: Bool = false
    var entrantDateOfBirth: Date? = Date()
    
    if let pass = pass as? classicGuest {
        
        print("This is a Classic Guest Pass")
        
        entrantAreaAccess = pass.areaAccess
        entrantMerchDiscount = pass.merchDiscount
        entrantFoodDiscount = pass.foodDiscount
        entrantRideAccess = pass.rideAccess
        
    } else if let pass = pass as? vipGuest {
        
        print("This is a VIP Guest Pass")
        
        entrantAreaAccess = pass.areaAccess
        entrantMerchDiscount = pass.merchDiscount
        entrantFoodDiscount = pass.foodDiscount
        entrantQueueSkip = pass.queueSkip
        entrantRideAccess = pass.rideAccess
        
    } else if let pass = pass as? freeChildGuest {
        
        print("This is a Free Child Guest Pass")
        
        entrantAreaAccess = pass.areaAccess
        entrantMerchDiscount = pass.merchDiscount
        entrantFoodDiscount = pass.foodDiscount
        entrantDateOfBirth = pass.dateOfBirth
        entrantRideAccess = pass.rideAccess
        
    }
    else if let pass = pass as? foodServiceEmployee {
        
        print("This is an Employee Pass for a Food Service Employee")
        
        entrantName = "\(pass.firstName as! String) \(pass.lastName as! String)"
        entrantAddress = "\(pass.streetAddress as! String), \(pass.city as! String), \(pass.state as! String), \(pass.zipPostCode as! String)"
        entrantAreaAccess = pass.areaAccess
        entrantMerchDiscount = pass.merchDiscount
        entrantFoodDiscount = pass.foodDiscount
        entrantRideAccess = pass.rideAccess
        
    }
    else if let pass = pass as? rideServiceEmployee {
        
        print("This is an Employee Pass for a Ride Service Employee")
        
        entrantName = "\(pass.firstName as! String) \(pass.lastName as! String)"
        entrantAddress = "\(pass.streetAddress as! String), \(pass.city as! String), \(pass.state as! String), \(pass.zipPostCode as! String)"
        entrantAreaAccess = pass.areaAccess
        entrantMerchDiscount = pass.merchDiscount
        entrantFoodDiscount = pass.foodDiscount
        entrantRideAccess = pass.rideAccess
    } else if let pass = pass as? maintenanceEmployee {
        
        print("This is an Employee Pass for a Maintenance Employee")
        
        entrantName = "\(pass.firstName as! String) \(pass.lastName as! String)"
        entrantAddress = "\(pass.streetAddress as! String), \(pass.city as! String), \(pass.state as! String), \(pass.zipPostCode as! String)"
        entrantAreaAccess = pass.areaAccess
        entrantMerchDiscount = pass.merchDiscount
        entrantFoodDiscount = pass.foodDiscount
        entrantRideAccess = pass.rideAccess
        
    }
    else if let pass = pass as? managerEmployee {
        
        print("This is an Employee Pass for a Manager")
        
        entrantName = "\(pass.firstName as! String) \(pass.lastName as! String)"
        entrantAddress = "\(pass.streetAddress as! String), \(pass.city as! String), \(pass.state as! String), \(pass.zipPostCode as! String)"
        entrantAreaAccess = pass.areaAccess
        entrantMerchDiscount = pass.merchDiscount
        entrantFoodDiscount = pass.foodDiscount
        entrantRideAccess = pass.rideAccess
        
    }
    
    
    
    
    for location in entrantAreaAccess {
        if swipeLocation == location{
            entrantDoesHaveAccess = true
        }
    }
    
    if entrantDoesHaveAccess {
        
        print("Access Granted - they have access to this area.")
        
        if entrantName != "" {
            print("This pass is registered to \(entrantName)")
        }
        if entrantAddress != "" {
            print("who's address is \(entrantAddress).")
        }
        
        if entrantRideAccess {
            print("Entrant has access to all rides")
        }
        else{
            print("Entrant does not have access to all rides")
        }
        
        if entrantMerchDiscount == 0.0 && entrantFoodDiscount == 0.0 {
            print("Entrant has no entitlement to discounts in either shop")
        }
        else{
            print("Entrant has \(entrantMerchDiscount)% discount on Merchandise and \(entrantFoodDiscount)% discount on food")
        }
        
        if entrantQueueSkip {
            print("Entrant can skip any lines / queues that they may face!")
        }
        else{
            print("Entrant is not allowed to skip any lines / queues.")
        }
        
    }
    else{
        
        print("Access Failure - Entrant does not have access to this area")
        
    }
    
    
    
    print("Swipe Complete.")
}
