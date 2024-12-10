//
//  LoginView.swift
//  TodoList
//
//  Created by fathan azka on 04/12/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationView{
            VStack{
    //            Header
                HeaderView(title: "To Do List", subTitle: "Get Things Done", angle: 15, background: .pink )
                
    //            Form
                Form{
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    TextField("Email Address", text: $viewModel.email).textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $viewModel.password).textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(
                        title: "Log In",
                        backgroundColor: .blue
                    ){
                        viewModel.login()
                    }
                }.offset(y: -50)
                
    //            Create Account
                VStack{
                    Text("New Around here?")
                    NavigationLink("Create An Account",destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
