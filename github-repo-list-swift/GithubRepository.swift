//
//  FISGithubRepository.swift
//  github-repo-list-swift
//
//  Created by susan lovaglio on 10/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class GithubRepository {
    var fullName: String
    var htmlURL: URL
    var repositoryID: String
    
    init(dictionary: [String: AnyObject]) {
        let uncastedURL =  dictionary["html_url"] as! String
        
        self.fullName = dictionary["full_name"] as! String
        self.htmlURL = URL(string: uncastedURL)!
        self.repositoryID = String(dictionary["id"] as! Int)
    }
    
    
}
