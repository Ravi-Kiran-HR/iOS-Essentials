//
//  File.swift
//  SmartCode
//
//  Created by Ravi Kiran HR on 13/02/22.
//

import UIKit

///////////////////////////////  Phase 2 : Using protocol /////////////////////////////

protocol Loader {
    func loadFeed(completion: @escaping ([String]) ->Void)
}

class FeedViewController1: UIViewController {
    private var loader: Loader!
    
    convenience init(loadFeed: Loader){
        self.init()
        self.loader = loadFeed
    }
    
    override func viewDidLoad() {
        loader.loadFeed {_ in
            // update UI
        }
    }
}

class RemoteFeedLoader: Loader {
    func loadFeed(completion: @escaping ([String]) -> Void) {
        // logic
    }
}


class LocalFeedLoader: Loader {
    func loadFeed(completion: @escaping ([String]) -> Void) {
        // logic
    }
}
