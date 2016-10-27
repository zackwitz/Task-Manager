//
//  TaskStore.swift
//  Task Manager
//
//  Created by Zack Hurwitz on 10/17/16.
//  Copyright © 2016 Zack. All rights reserved.
//

import Foundation


let kTaskManagerTaskAddedNotification = "com.zackhurwitz.taskmanager.addedtask";


class TaskStore {
    class var sharedInstance: TaskStore {
        struct Static {
            static let instance = TaskStore()
        }
        return Static.instance
    }
    
    var count: Int {
        get {
            return tasks.count
        }
    }
    
    var tasks: [Task] = []
    
    func add(task: Task) {
        tasks.append(task)
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: kTaskManagerTaskAddedNotification), object: nil);
        
    }
    
    func replace(task: Task, atIndex index: Int) {
        tasks[index] = task
    }
    
    func get(index: Int) -> Task {
        return tasks[index]
    }

    func removeTaskAtIndex(index: Int) {
        tasks.remove(at: index)
    }
}
