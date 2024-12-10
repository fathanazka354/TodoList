//
//  TodoListItem.swift
//  TodoList
//
//  Created by fathan azka on 04/12/24.
//

import Foundation

struct TodoListItem: Identifiable, Codable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool){
        isDone = state
    }
}
