//
//  Actual functions.swift
//  taskMaNaGeR
//
//  Created by Christian Lenberger on 3/7/18.
//  Copyright © 2018 Christian Lenberger. All rights reserved.
//

import Foundation
var userInput = Int()
var taskArray: [Task] = []



func addTask() {
    print("What is your task?")
    userInput1 = readLine()!
    print("Describe the task")
    userInput2 = readLine()!
    print("How many days until this task needs to be completed?")
    userInput3 = Int(readLine()!)!
    let currentDate = Date()
    let calendar = Calendar.current
    
    let dueDate = calendar.date(byAdding: .day, value: userInput3!, to: currentDate)
    
    let newTask = Task(name: userInput1!, description: userInput2!, dueDate: dueDate!)
    taskArray.append(newTask)
    print("""
The task has been added to your library.
To return to the main menu enter the number 4 or the number 5 to quit the program
""")
    userInput = Int(readLine()!)!
    if userInput == 4 {
        mainMenu()
    } else {
        print("Please enter the number 4")
        userInput = Int(readLine()!)!
    }
}



func removeTask() {
    print("What task would you like to remove?")
    for i in taskArray{
        print(i)
    }
    userInput3 = Int(readLine()!)!
    taskArray.remove(at: userInput3!)
    print("The task has been removed, type the number 4 to return to the menu or the number 5 to exit the program")
    if userInput == 4{
        mainMenu()
    } else {
        print("Please enter the number 4 to return or the number 5 to exit the program")
        userInput = Int(readLine()!)!
    }
}



func viewTask() {
    for i in taskArray{
        print (i)
    }
    print("Which task would you like to view?")
    userInput3 = Int(readLine()!)!
    for _ in taskArray{
        print(taskArray[userInput3!])
        mainMenu()
    }
}

func mainMenu() {
    
    print("""
Welcome to to your task manager, what would you like to do today?
1.Add a task
2.View tasks
3.Remove tasks
Please enter a 1, 2, or 3.
""")
    userInput = Int(readLine()!)!
}

