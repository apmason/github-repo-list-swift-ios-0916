//
//  FISGithubAPIClient.swift
//  github-repo-list-swift
//
//  Created by  susan lovaglio on 10/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class GithubAPIClient {
//    
    class func getRepositories(with completion: @escaping ([[String : AnyObject]]) -> Void) {
        let urlString = "https://api.github.com/repositories?client_id=" + clientID + "&client_secret=" + cliendSecret
        
        let url = URL(string: urlString)
        
        if let unwrappedURL = url {
            
            let session = URLSession.shared
            
            let task = session.dataTask(with: unwrappedURL) { (data, response, error) in
                
                if let unwrappedData = data {
                    
                    do {
                        
                        var responseJSON =  try JSONSerialization.jsonObject(with: unwrappedData, options: []) as! [[String : AnyObject]]
                        
                        completion(responseJSON)
                        
                    } catch {
                        
                        
                    }
                    
                }
            }
            
            task.resume()
            
        }
    
    }
}



