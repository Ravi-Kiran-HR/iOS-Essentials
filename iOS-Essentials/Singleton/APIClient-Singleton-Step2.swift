//
//  APIClient-Singleton-Step2.swift
//  iOS-Essentials
//
//  Created by Ravi Kiran HR on 13/02/22.
//

import UIKit

// Refer Sources/Singleton step 2 dependency diagram.png

// API Client Module
class ApiClient1 {
    static let shared = ApiClient1()
    private init() {}
    
    func execute(request: URLRequest, completion: (Data) -> Void) {}
}

class MockApiClient1: ApiClient1 {
    // use this to override funcs to mock
}

// Login Module
struct LoggedInUser {}

extension ApiClient1 {
    func login(completion: (LoggedInUser)-> Void){}
}

class LoginVC1: UIViewController {
    var apiClient = ApiClient1.shared
    func didTapLogin() {
        apiClient.login { user in
            // Navigate to Feeds
        }
    }
}

// Feeds Module
struct FeedItem {}

extension ApiClient1 {
    func fetchFeeds(completion: (FeedItem)-> Void){}
}

class FeedsVC1: UIViewController {
    var apiClient = ApiClient1.shared
    func didFetchDataTapped() {
        apiClient.fetchFeeds { feed in
            
        }
    }
}



