//
//  ToDoModel.swift
//  Notes
//
//  Created by Vitaly Anpilov on 07.10.2023.
//

import Foundation

struct ToDoModel {
    var title: String
    var date: Date
    var items: [ToDoItem]
}

struct ToDoItem {
    var text: String
    var isDone: Bool
}
