//
//  User.swift
//  TodoList
//
//  Created by fathan azka on 04/12/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
