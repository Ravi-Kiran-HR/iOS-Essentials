//
//  Composition_Solution.swift
//  iOS-Essentials
//
//  Created by Ravi Kiran HR on 14/02/22.
//

import UIKit

struct NetwrokReachability1 {
    static let reachability = false
}

class FeedViewController3: UIViewController {
    var loader: Loader1?
    
    override func viewDidLoad() {
        loader?.loadFeed { feeds in
            // update UI
        }
    }
}

class RemoteLoaderWithFallbackLocalLoader: Loader1 {
    var remoteFeeder: Loader1?
    var localFeeder: Loader1?
    
    convenience init(remoteFeeder: Loader1, localFeeder: Loader1){
        self.init()
        self.localFeeder = localFeeder
        self.remoteFeeder = remoteFeeder
    }
    
    func loadFeed(_ completion: @escaping ([String]) -> Void) {
        //        if NetwrokReachability1.reachability {
        //            self.remoteFeeder?.loadFeed ({ feeds in
        //                // logic
        //            })
        //        } else {
        //            self.localFeeder?.loadFeed { feeds in
        //                // logic
        //            }
        //        }
        
        ///////////////////////// (or) /////////////////////
        
        NetwrokReachability1.reachability ? self.remoteFeeder?.loadFeed(completion) : self.localFeeder?.loadFeed(completion)
        
    }
}

protocol Loader1 {
    func loadFeed(_ completion: @escaping ([String]) ->Void)
}

class RemoteFeedLoader2: Loader1 {
    func loadFeed(_ completion: @escaping ([String]) -> Void) {
        // logic
    }
}

class LocalFeedLoader2: Loader1 {
    func loadFeed(_ completion: @escaping ([String]) -> Void) {
        // logic
    }
}
