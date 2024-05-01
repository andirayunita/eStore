//
//  RegisterView.swift
//  eStore
//
//  Created by Andira Yunita on 26/04/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject private var createUserVM = AuthViewModel()
    
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var avatar = "https://i.pravatar.cc/150?img=31"
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("User information")
                        .font(.headline)
                    
                    Group {
                        TextField("Name", text: $name)
                        TextField("Email", text: $email)
                            .textInputAutocapitalization(.never)
                        SecureField("Password", text: $password)
                    }
                    .textFieldStyle(.roundedBorder)
                    .autocorrectionDisabled()
                    
                    Button {
                        registeredUser()
                    } label: {
                        Text("Register")
                    }
                    .buttonStyle(.borderedProminent)
                }
                .padding()
            }
            .navigationTitle(Constant.registerView)
            .alert("Registration Success", isPresented: $createUserVM.registrationSuccess) {
                Button("OK") { }
            } message: {
                Text(createUserVM.message)
            }
        }
    }
    
    private func registeredUser() {
        Task {
            await createUserVM.registerUser(
                name: name,
                email: email,
                password: password,
                avatar: avatar
            )
        }
    }
}

#Preview {
    RegisterView()
}
