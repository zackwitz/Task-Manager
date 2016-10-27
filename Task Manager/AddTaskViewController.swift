//
//  AddTaskViewController.swift
//  Task Manager
//
//  Created by Zack Hurwitz on 10/17/16.
//  Copyright © 2016 Zack. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var notesField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//     func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
//        
//    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "dismissAndSave" {
            let task = Task(title: titleField.text!, notes: notesField.text!)
            print(task.toString())
            TaskStore.sharedInstance.add(task: task)
        }
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
