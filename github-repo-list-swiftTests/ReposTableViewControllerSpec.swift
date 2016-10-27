//
//  ReposTableViewControllerSpec.swift
//  github-repo-list-swift
//
//  Created by  susan lovaglio on 10/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import Quick
import Nimble
import KIF

@testable import github_repo_list_swift

class ReposTableViewControllerSpec: QuickSpec {
    
    override func spec() {
        
        let tester = KIFUITestActor(inFile: #file, atLine: #line, delegate: self)!
        
        let tableView = tester.waitForView(withAccessibilityLabel: "tableView") as! UITableView
        let indexPath = IndexPath(row: 1, section: 0)
        let cell = tableView.cellForRow(at: indexPath)
        
        describe("TableView") {
            it("should have 1 section") {
                expect(tableView.numberOfSections).to(equal(1))
            }
            it("should have 2 cells") {
                expect(tableView.numberOfRows(inSection: 0)).to(equal(2))
            }
        }
        describe("TableView Cells") {
            it("Should have the correct cells") {
                expect(cell?.textLabel?.text).to(equal("https://github.com/wycats/merb-core"))
            }
            
        }
        
    }

}
