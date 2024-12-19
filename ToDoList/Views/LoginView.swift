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
        VStack{
            HeaderView()
            Form{
                TextField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Email Address", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button{
                    
                }label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.blue)
                        Text("Login")
                            .foregroundColor(Color.white)
                            .bold()
                    }
                }
            }
            VStack{
                Text("New around here?")
                Button("Create an account"){
                    
                }
            }
            .padding(.bottom, 50)
            Spacer()
            
        }
    }
}
#Preview {
    LoginView()
}
