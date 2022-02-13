//
//  APIClient-Singleton-Step1.swift
//  iOS-Essentials
//
//  Created by Ravi Kiran HR on 13/02/22.
//

import UIKit

// Refer Sources/Singleton step 1 dependency diagram.png
struct LoginUser {}
struct  Feed {}

class ApiClient {
    static let shared = ApiClient()
    private init() {}
    
    func login(completion: (LoginUser)-> Void){}
    func fetchFeeds(completion: (Feed)-> Void){}
}

class MockApiClient: ApiClient {
    // use this to override funcs to mock
}

class LoginVC: UIViewController {
    var apiClient = ApiClient.shared
    func didTapLogin() {
        apiClient.login { user in
            // Navigate to Feeds
        }
    }
}

class FeedsVC: UIViewController {
    var apiClient = ApiClient.shared
    func didFetchDataTapped() {
        apiClient.fetchFeeds { feed in
            
        }
    }
}



