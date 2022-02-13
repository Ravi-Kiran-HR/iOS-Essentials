//
//  Singleton.swift
//  iOS-Essentials
//
//  Created by Ravi Kiran HR on 13/02/22.
//

import UIKit

// Singleton

// Below is example for Capital 'S' Singleton - which strictly cannot allow createing another instance
 class NetworkManager {
    static let sharedInstance = NetworkManager()
    private init() {}
}

// Below is example for small 's' singleton - which can allow createing another instance
 class NetworkManager1 {
    static let sharedInstance = NetworkManager1()
}


// Below is not a singleton is shared static glogal "variable"
 class NetworkManager3 {
    static var sharedInstance = NetworkManager3()
}

