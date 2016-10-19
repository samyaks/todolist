//
//  CreateTaskViewController.swift
//  ToDoList
//
//  Created by Samyak Shah on 10/19/16.
//  Copyright © 2016 Samyak Shah. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

  
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    
    var previousVC = ViewController()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: AnyObject) {
  
    // create task 
    let task = Task()
    task.name = textField.text!
    task.important = importantSwitch.isOn
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
