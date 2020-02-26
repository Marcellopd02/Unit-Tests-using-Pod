//
//  FirstTableViewController.swift
//  listForTesting
//
//  Created by Marcello Pontes Domingos on 15/01/20.
//  Copyright © 2020 BRQ. All rights reserved.
//

import UIKit

enum LikeOrNotlike: Int{
    case Like
    case Notlike
}

class FirstTableViewController: UITableViewController {
    
    var type: String?
    var LONL: LikeOrNotlike?
    var programs: [Program] {
        return TableData.getProgram()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return programs.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellF")
        
        let program = programs[indexPath.row]
        cell?.textLabel?.text = program.type
        cell?.detailTextLabel?.text = program.LONLString()
        
        return cell!
    }
}
