//
//  ViewController.swift
//  testClosure
//
//  Created by Ravi Kiran HR on 13/02/22.
//

import UIKit

// Refer Singleton/DependecyDiagrams/APIClient-Singleton-Step3 dependency diagram.png
class LoginViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func loginTapped(){
        let api = ApiClient2.shared
        let vm = LoginViewModel()
        vm.login = api.login(completion:)
    }
    
}


// Refer Sources/Singleton step 3 dependency diagram.png

//Main Module
extension ApiClient2 {
    public func fetchFeeds(completion: (FeedItem)-> Void){}
}

extension ApiClient2 {
    public func login(completion: (LoggedInUser2)-> Void){
        execute(request: URLRequest(url: URL(string: "www.google.com")!)) { data in
            completion(LoggedInUser2())
        }
    }
}


// API Client Module
class ApiClient2 {
    static let shared = ApiClient2()
    private init() {}
    
    func execute(request: URLRequest, completion: (Data) -> Void) {}
}

class MockApiClient2: ApiClient2 {
    // use this to override funcs to mock
}

// Login Module
struct LoggedInUser2 {}

class LoginViewModel {
    var login: (((LoggedInUser2)-> Void) ->Void)?
    func didTapLogin() {
        login? { user in
            // Navigate to Feeds
        }
    }
}

// Feeds Module
struct FeedItem2 {}

class FeedsVC2: UIViewController {
}

class FeedService: UIViewController {
    var fetchFeeds: (((FeedItem2)-> Void) ->Void)?
    func getFeeds() {
        fetchFeeds? { feed in
            
        }
    }
}



