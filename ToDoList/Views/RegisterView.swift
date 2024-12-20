//
//  RegisterView.swift
//  ToDoList
//
//  Created by Jorabek Boyxorozov on 18/12/24.
//

import SwiftUI

struct RegisterView: View {
    @State var fullName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack{
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, backgroundColor: .orange)
                .offset(y: 50)
            Form{
                TextField("Full Name", text: $fullName)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TLButton(title: "Create Account", backgroundColor: .green){
                    
                }
            }
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
