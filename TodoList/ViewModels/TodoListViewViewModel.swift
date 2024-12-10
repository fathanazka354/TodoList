//
//  File.swift
//  TodoList
//
//  Created by fathan azka on 04/12/24.
//

import Foundation
import FirebaseFirestore


class TodoListViewViewModel: ObservableObject {
    @Published var isPresented = false
    private let userId: String
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
        
    }
}
