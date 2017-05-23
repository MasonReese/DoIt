//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Ben Peek on 5/17/17.
//  Copyright © 2017 Ben Peek. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

      @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    
var previousVC = TasksViewController()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func addTapped(_ sender: Any) {
        // create tasks from the outlet info
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        // add new task to array in previous vc
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

 
}
