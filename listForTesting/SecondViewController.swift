//
//  SecondViewController.swift
//  listForTesting
//
//  Created by Marcello Pontes Domingos on 15/01/20.
//  Copyright © 2020 BRQ. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBAction func addItem(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "first") as! FirstTableViewController
        controller.type = textField.text
        let seg = segment.titleForSegment(at: segment.selectedSegmentIndex)
        if seg == "Like"{
            controller.LONL = .Like
        }else{
            controller.LONL = .Notlike
        }
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
