//
//  ToDoItem.swift
//  ToDo
//
//  Created by Irene Liao on 5/23/23.
//

import Foundation

class ToDoItem: Identifiable {
    var id = UUID();
    var title: String;
    var isImportant: Bool;
    
    init(title: String, isImportant: Bool = false) {
        self.title = title;
        self.isImportant = isImportant;
    }
}
