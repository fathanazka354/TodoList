//
//  RegisterView.swift
//  TodoList
//
//  Created by fathan azka on 04/12/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack{
            HeaderView(title: "Register", subTitle: "Start Organizing tods", angle: -15, background: .orange )
            
            Form{
                TextField("Full Name", text: $viewModel.name).textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email", text: $viewModel.email).textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                
                SecureField("Password", text: $viewModel.password).textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(
                    title: "Create Account",
                    backgroundColor: .green
                ){
                    viewModel.register()
                }
            }
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
