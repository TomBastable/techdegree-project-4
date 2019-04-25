//
//  Guests.swift
//  Amusement Park Entry
//
//  Created by Tom Bastable on 25/04/2019.
//  Copyright © 2019 Tom Bastable. All rights reserved.
//

import Foundation

enum GuestTypes {
    
    case classic
    case vip
    case freeChild
    
    /* written in prep for proj5
    case seasonPass
    case senior
    */
    
}

class classicGuest: Guests {
    
    var areaAccess: [AreaAccess]
    var rideAccess: Bool
    var guestType: GuestTypes
    
    init() {
       
        self.areaAccess = [.amusementAreas]
        self.rideAccess = true
        self.guestType = .classic
    }
    
}

class vipGuest: VIP {
    
    var queueSkip: Bool
    var foodDiscount: Double
    var merchDiscount: Double
    var areaAccess: [AreaAccess]
    var rideAccess: Bool
    var guestType: GuestTypes
    
    init() {
        
        self.areaAccess = [.amusementAreas]
        self.rideAccess = true
        self.queueSkip = true
        self.foodDiscount = 10.0
        self.merchDiscount = 20.0
        self.guestType = .vip
        
    }
    
}

class freeChildGuest: FreeChild {
    
    var areaAccess: [AreaAccess]
    var rideAccess: Bool
    var dateOfBirth: Date?
    var guestType: GuestTypes
    
    init(dateOfBirth: Date?) throws {
        
        guard let dateOfBirth = dateOfBirth else{
            print("Date of Birth Required")
            throw PassCreationError.dateOfBirthRequired
        }
        
        self.areaAccess = [.amusementAreas]
        self.rideAccess = true
        self.dateOfBirth = dateOfBirth
        self.guestType = .freeChild
        
    }
    
}


