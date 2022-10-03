//
//  ContentView.swift
//  LoginScreenTemplate
//
//  Created by Ceren on 3.10.2022.
//

import SwiftUI

let whiteSmokeColor = Color(red: 245.0/255.0, green: 245.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct ContentView: View {
   
    @State var tabIndex = 0
    var body: some View {
        VStack{
            CustomTopTabBar(tabIndex: $tabIndex)
            if tabIndex == 0 {
                SignInTabView()
            }
            else {
                SignUpTabView()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomTopTabBar: View {
    @Binding var tabIndex: Int
    
    var body: some View {
        HStack(alignment: .top, spacing: 10.0) {
        Spacer()
        TabBarButton(text: "Sign In", isSelected: .constant(tabIndex == 0))
            .onTapGesture {
                onButtonTapped(index: 0)
            }
            .cornerRadius(15.0)
        TabBarButton(text: "Sign Up", isSelected: .constant(tabIndex == 1))
            .onTapGesture {
                onButtonTapped(index: 1)
            }
            .cornerRadius(15.0)
            .padding(.trailing, 10.0)
        }
    }
    
    private func onButtonTapped(index: Int) {
        withAnimation { tabIndex = index }
    }
}

struct TabBarButton: View {
    let text: String
    @Binding var isSelected: Bool
    var body: some View {
        Text(text)
            .padding(.all, 10.0)
            .foregroundColor(isSelected ? .white : .gray)
            .background(isSelected ? .orange : .clear)
    }
}

struct SignInTabView: View{
    var body: some View{
        Spacer()
        VStack(spacing: 20.0){
            HeaderText(text: "Sign In")
            UserNameTextField()
            PasswordSecureField()
            ContinueButton(text: "Login")
            ForgotPasswordButton()
        }
    }
}

struct SignUpTabView: View{
    var body: some View{
        Spacer()
        VStack(spacing: 20.0){
            HeaderText(text: "Sign Up")
            EmailTextField()
            UserNameTextField()
            PasswordSecureField()
            ContinueButton(text: "Sign Up")
        }
    }
}

struct HeaderText: View {
    let text: String
    var body: some View {
        VStack {
            Text(text)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.gray)
        }
    }
}

struct UserNameTextField: View {

    @State var username: String = ""

    var body: some View {
        TextField("Username", text: $username)
            .padding()
            .textContentType(UITextContentType.nickname)
            .multilineTextAlignment(TextAlignment.center)
            .frame(width: 300, height: 50)
            .background(whiteSmokeColor)
            .foregroundColor(.orange)
            .cornerRadius(8.0)
    }
}

struct EmailTextField: View {

    @State var email: String = ""

    var body: some View {
        TextField("E-mail", text: $email)
            .padding()
            .textContentType(UITextContentType.nickname)
            .multilineTextAlignment(TextAlignment.center)
            .frame(width: 300, height: 50)
            .background(whiteSmokeColor)
            .foregroundColor(.orange)
            .cornerRadius(8.0)
    }
}

struct PasswordSecureField: View {
    
    @State var userpassword: String = ""

    var body: some View {
        SecureField("Password", text: $userpassword)
            .padding(.bottom, 0.0)
            .textContentType(UITextContentType.password)
            .multilineTextAlignment(TextAlignment.center)
            .frame(width: 300, height: 50)
            .background(whiteSmokeColor)
            .foregroundColor(.orange)
            .cornerRadius(8.0)
    }
}

struct ContinueButton: View {
    let text: String
    var body: some View {
        Button(text) {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        }.font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 150, height: 50)
            .background(Color.orange)
            .cornerRadius(15.0)
    }
}

struct ForgotPasswordButton: View {
    var body: some View {
        Button("Forgot your password?") {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        }.font(.footnote)
            .foregroundColor(.orange)
            .padding()
            .cornerRadius(15.0)
    }
}




