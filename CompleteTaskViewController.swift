//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Ben Peek on 5/21/17.
//  Copyright © 2017 Ben Peek. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    @IBOutlet weak var taskLabel: UILabel!
    var task = Task()
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.important {
            taskLabel.text = "‼️\(task.name)"
        } else {
        taskLabel.text = task.name 
        }
        }
    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

}
