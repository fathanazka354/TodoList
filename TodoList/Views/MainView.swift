//
//  ContentView.swift
//  TodoList
//
//  Created by fathan azka on 04/12/24.
//

import SwiftUI
import SwiftData

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            accountView
        }else{
            LoginView()
        }
            
    }
    
    @ViewBuilder
    var accountView: some View{
        TabView{
            TodoListView(userId: viewModel.currentUserId).tabItem{
                Label("Home", systemImage:  "house")
            }
            ProfileView().tabItem{
                Label("Profile", systemImage: "person.circle")
            }
        }
    }

}

#Preview {
    MainView()
        .modelContainer(for: Item.self, inMemory: true)
}
