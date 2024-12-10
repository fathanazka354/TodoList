//
//  TodoListView.swift
//  TodoList
//
//  Created by fathan azka on 04/12/24.
//

import SwiftUI
import FirebaseFirestore

struct TodoListView: View {
    
    @StateObject var viewModel :TodoListViewViewModel
    @FirestoreQuery var items : [TodoListItem]
    init(userId: String) {
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        self._viewModel = StateObject(wrappedValue: TodoListViewViewModel(userId: userId))
    }
    
    var body: some View {
        NavigationView{
            VStack{
                List(items){item in
                    TodoListItemView(item: item)
                        .swipeActions{
                            Button("Delete"){
                                viewModel.delete(id: item.id)
                            }.tint(.red)
                        }
                }
            }
                .navigationTitle("To Do List").toolbar{
                Button{
                    viewModel.isPresented = true
                }label: {
                    Image(systemName: "plus")
                }
                .sheet(isPresented: $viewModel.isPresented, content: {
                    NewItemView(
                        newItemPresented: $viewModel.isPresented
                    )
                })
            }
        }
    }
}

#Preview {
    TodoListView(userId: "TtyMGbszV2Qz116a1MYdvf2hw7A2")
}
