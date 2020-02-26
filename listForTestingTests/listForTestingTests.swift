//
//  listForTestingTests.swift
//  listForTestingTests
//
//  Created by Marcello Pontes Domingos on 15/01/20.
//  Copyright © 2020 BRQ. All rights reserved.
//

import Quick
import Nimble
@testable import listForTesting

class listForTestingTests: QuickSpec {
    
    override func spec() {
        var subjectFirst: FirstTableViewController!
        var subjectSecond: SecondViewController!
        
        describe("FirstTableViewControllerSpec"){
            beforeEach {
                subjectFirst = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "first") as? FirstTableViewController
                
                _ = subjectFirst.view
            }
            context("When view is loaded"){
                it("Should have 6 programs loaded"){
                    expect(subjectFirst.tableView.numberOfRows(inSection: 0)).to(equal(6))
                }
                it("Should have 1 section loaded"){
                    expect(subjectFirst.tableView.numberOfSections).to(equal(1))
                }
            }
            context("Programs view loaded"){
                var cell: UITableViewCell!
                beforeEach {
                    cell = subjectFirst.tableView(subjectFirst.tableView, cellForRowAt: IndexPath(row: 0, section: 0))
                }
                it("Should show programs type and aprovation"){
                    expect(cell.textLabel?.text).to(equal("Anime"))
                    expect(cell.detailTextLabel?.text).to(equal("Like"))
                }
            }
        }
        
        describe("SecondViewControllerSpec"){
            beforeEach {
                subjectSecond = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "second") as? SecondViewController
                
                _ = subjectSecond.view
                
                
            }
            context("When view is loaded"){
                it("Should textField is empyt"){
                    expect(subjectSecond.textField.text).to(equal(""))
                }
                it("Should segment is Like"){
                    expect(subjectSecond.segment.titleForSegment(at: subjectSecond.segment.selectedSegmentIndex)).to(equal("Like"))
                }
                it("Should corner radius button is 8"){
                    expect(subjectSecond.addButton.layer.cornerRadius).to(equal(8))
                }
                it("Segment should be like") {
                    subjectSecond.addItem(UIButton())
                    expect(subjectSecond.segment.selectedSegmentIndex).to(equal(0))
                }
                it("Segment should be not like") {
                    subjectSecond.segment.selectedSegmentIndex = 1
                    subjectSecond.addItem(UIButton())
                    expect(subjectSecond.segment.selectedSegmentIndex).to(equal(1))
                }
            }
        }
    }
}
