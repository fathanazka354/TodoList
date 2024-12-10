//
//  TodoListItemsView.swift
//  TodoList
//
//  Created by fathan azka on 04/12/24.
//

import SwiftUI

struct TodoListItemView: View {
    let item : TodoListItem
    
    @StateObject var viewModel = TodoListItemViewViewModel()
    
    init(item: TodoListItem) {
        self.item = item
    }
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(item.title)
                    .font(.body)
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
            }
            Spacer()
            
            Button{
                viewModel.toggleIsDone(item: item)
            } label: {
                Image(systemName: item.isDone ?"checkmark.circle.fill":"circle")
                    .foregroundColor(Color.blue)
            }
        }
    }
}

#Preview {
    TodoListItemView(
        item: .init(
            id: "123",
            title: "Mantap",
            dueDate: Date().timeIntervalSince1970,
            createdDate: Date().timeIntervalSince1970,
            isDone: true
        )
    )
}
