//
//  CustomUser.swift
//  WatchAid
//
//  Created by JennerPerry on 4/11/15.
//  Copyright (c) 2015 Sean O'Keeffe. All rights reserved.
//

import Foundation
import Parse

class CustomUser : PFUser, PFSubclassing {
    
    dynamic var name: String
    dynamic var phoneNumber: String
    dynamic var userType: String
    dynamic var userLocation: PFGeoPoint
    dynamic var helpers: [CustomUser]
    
    init(name: String!, phoneNumber: String!, userType: String!) {
        self.name = name
        self.phoneNumber = phoneNumber
        self.userType = userType
        self.userLocation = PFGeoPoint()
        self.helpers = []

        super.init()
    }
    
    // Commented out because this is extending PFUser
    //    override class func parseClassName() -> String! {
    //        return "PFUser"
    //    }
}