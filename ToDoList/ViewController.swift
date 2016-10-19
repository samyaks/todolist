//
//  ViewController.swift
//  ToDoList
//
//  Created by Samyak Shah on 10/19/16.
//  Copyright © 2016 Samyak Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    


    @IBOutlet weak var tableView: UITableView!
    
    var tasks : [Task] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = nameTasks()
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    

    func tableView(_ tableView: UITableView, cellForRowAt
        indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = "!\(task.name)"
        } else {
            cell.textLabel?.text = task.name
        }
        
        return cell
    }
    
    func nameTasks() -> [Task] {
        let task1 = Task()
        task1.name = " Do Laundry"
        task1.important = false
        
        let task2 = Task()
        task2.name = " Buy Onions and garlic"
        task2.important = true
        
        
        
        return [task1, task2]
    }
    
    ///@IBAction func plusTapped(_ sender: AnyObject) {
       // performSegue(withIdentifier: "addSegue", sender: nil)
   // }
    
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let nextVC = segue.destination as!
       // CreateTaskViewController
       // nextVC.previous = self
   //}


}


