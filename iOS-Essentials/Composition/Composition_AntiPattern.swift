//
//  Composition_Phase3.swift
//  iOS-Essentials
//
//  Created by Ravi Kiran HR on 14/02/22.
//

import UIKit

// Say Feedview controller is depending on 2 concrete types directlly (hard coupling)

struct NetwrokReachability {
    static let reachability = false
}

class FeedViewController2: UIViewController {
    var remoteFeeder: RemoteFeedLoader1?
    var localFeeder: LocalFeedLoader1?
    
    convenience init(remoteFeeder: RemoteFeedLoader1, localFeeder: LocalFeedLoader1){
        self.init()
        self.localFeeder = localFeeder
        self.remoteFeeder = remoteFeeder
    }
    
    override func viewDidLoad() {
        if NetwrokReachability.reachability {
            self.remoteFeeder?.loadFeed { feeds in
                // logic
            }
        } else {
            self.localFeeder?.loadFeed { feeds in
                // logic
            }
        }
    }
}


class RemoteFeedLoader1 {
    func loadFeed(_ completion: @escaping ([String]) -> Void) {
        // logic
    }
}


class LocalFeedLoader1 {
    func loadFeed(_ completion: @escaping ([String]) -> Void) {
        // logic
    }
}
