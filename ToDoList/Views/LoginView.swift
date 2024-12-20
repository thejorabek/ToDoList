//
//  LoginView.swift
//  ToDoList
//
//  Created by Jorabek Boyxorozov on 18/12/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""

    var body: some View {
        NavigationView{
            VStack{
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, backgroundColor: .pink)
                Form{
                    TextField("Email ", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("Password ", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TLButton(title: "Login", backgroundColor: .blue){
                        
                    }
                }
                VStack{
                    Text("New around here?")
                    NavigationLink("Create an account", destination: RegisterView())
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
