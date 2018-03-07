//
//  main.swift
//  taskMaNaGeR
//
//  Created by Christian Lenberger on 2/21/18.
//  Copyright © 2018 Christian Lenberger. All rights reserved.
//

import Foundation

var runningTaskManager = true

repeat {
mainMenu()


switch userInput {
case 1: addTask()
case 2: viewTask()
case 3: removeTask()
case 4: mainMenu()
case 5: runningTaskManager = false
default: mainMenu()
    
    
}
} while runningTaskManager

exit(0)












