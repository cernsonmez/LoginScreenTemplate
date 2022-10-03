//
//  ContentView.swift
//  LoginScreenTemplate
//
//  Created by Ceren on 3.10.2022.
//

import SwiftUI

let whiteSmokeColor = Color(red: 245.0/255.0, green: 245.0/255.0, blue: 244.0/255.0, opacity: 1.0)


struct ContentView: View {
    @State var username: String = ""
    @State var userpassword: String = ""
    

    var body: some View {
        VStack {
            LoginText()
            TextField("Username", text: $username)
                .padding()
                .textContentType(UITextContentType.nickname)
                .multilineTextAlignment(TextAlignment.center)
                .frame(width: 300, height: 50)
                .background(whiteSmokeColor)
                .cornerRadius(5.0)
            TextField("Password", text: $userpassword)
                .padding()
                .textContentType(UITextContentType.password)
                .multilineTextAlignment(TextAlignment.center)
                .frame(width: 300, height: 50)
                .background(whiteSmokeColor)
                .cornerRadius(5.0)
            Button("Login") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }.font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 150, height: 50)
                .background(Color.orange)
                .cornerRadius(15.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LoginText: View {
    var body: some View {
        VStack {
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.gray)
            .padding()
        }
    }
}
