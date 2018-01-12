//
//  ViewController.swift
//  Due
//
//  Created by Alex Harrison on 1/11/18.
//  Copyright © 2018 Alex Harrison. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    let itemArray = ["Todo 1", "Todo 2", "Todo 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK - Tableview datasource methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
        
    }
    
    //MARK - Tableview delegate methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(itemArray[indexPath.row])
        
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        
    }
    
}

