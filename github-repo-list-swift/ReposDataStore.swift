//
//  FISReposDataStore.swift
//  github-repo-list-swift
//
//  Created by  susan lovaglio on 10/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ReposDataStore {
    
    static let sharedInstance = ReposDataStore()
    
    var repositories: [GithubRepository] = []
    
    func getRepositoriesFromAPI(completion: @escaping () -> ()) {
        repositories.removeAll()
        
        GithubAPIClient.getRepositories { (array) in
            for repo in array {
                self.repositories.append(GithubRepository.init(dictionary: repo))
            }
            
            print(self.repositories)
            completion()
        }
    
        
    }
    

    
}
