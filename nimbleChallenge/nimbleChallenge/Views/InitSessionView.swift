//
//  InitSessionView.swift
//  nimbleChallenge
//
//  Created by mario saldaña martinez on 03/11/23.
//

import SwiftUI

struct InitSessionView: View {
    @State private var email = ""
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                if email.isEmpty {
                    Text("Email")
                        .font(Font.custom("Neuzeit", size: 20))//change font
                        .foregroundStyle(Color(.white))
                        .fontWeight(.light)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundStyle(Color("gray-white"))
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                        
                }
                TextField("", text: $email)
                    .padding(EdgeInsets(top: 17, leading: 10, bottom: 17, trailing: 18))
                    .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color(.white), lineWidth: 2))
            }.padding(EdgeInsets(top: 100, leading: 18, bottom: 10, trailing: 18))
            
            // password TextField
            
            ZStack(alignment: .leading) {
                if email.isEmpty {
                    Text("Password")
                        .font(Font.custom("Neuzeit", size: 20))//change font
                        .foregroundStyle(Color(.white))
                        .fontWeight(.light)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundStyle(Color(.grayWhite))
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                        
                }
                TextField("", text: $email)
                    .padding(EdgeInsets(top: 17, leading: 10, bottom: 17, trailing: 18))
                    .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color(.white), lineWidth: 2))
            }.padding(EdgeInsets(top: 10, leading: 18, bottom: 10, trailing: 18))
            
            //Login Button
            
            Button(action: {
                print("log in")
            }, label: {
                Text("Log in")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .foregroundStyle(Color(.black))
                    .padding(EdgeInsets(top: 12, leading: 18, bottom: 12, trailing: 18))
                    
            }).buttonStyle(.borderedProminent).tint(Color(.white)).padding(EdgeInsets(top: 10, leading: 18, bottom: 110, trailing: 18))
                
            
            
        }
    }
}

#Preview {
    InitSessionView()
}
