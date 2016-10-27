//
//  Task.swift
//  Task Manager
//
//  Created by Zack Hurwitz on 10/17/16.
//  Copyright © 2016 Zack. All rights reserved.
//

import Foundation

struct Task
{
    let title: String
    let notes: String
    
    init(title: String, notes: String)
    {
        self.title = title
        self.notes = notes
    }
    
    func toString() -> String
    {
        var toReturn = "Title: "
        toReturn += title
        toReturn += "\nNotes: "
        toReturn += notes
        return toReturn
    }
    
}
