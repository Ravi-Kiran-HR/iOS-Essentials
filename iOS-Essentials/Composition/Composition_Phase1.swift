//
//  Composition.swift
//  SmartCode
//
//  Created by Ravi Kiran HR on 14/02/22.
//

import UIKit

///////////////////////////////  Phase 1: Using closure  /////////////////////////////
typealias FeedLoader =  ((([String])->Void)->Void)

class FeedViewController: UIViewController {
    private var loadFeed: FeedLoader!

    convenience init(loadFeed: @escaping FeedLoader){
        self.init()
        self.loadFeed = loadFeed
    }

    override func viewDidLoad() {
        loadFeed {_ in
            // update UI
        }
    }
}
