//
//  DismissSegue.swift
//  Task Manager
//
//  Created by Zack Hurwitz on 10/17/16.
//  Copyright © 2016 Zack. All rights reserved.
//

import UIKit

@objc(DismissSegue) class DismissSegue: UIStoryboardSegue {

    override func perform() {
        if let controller = source.presentingViewController {
            controller.dismiss(animated: true, completion: nil)
        }
    }
    
}
