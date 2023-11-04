//
//  SplashScreen.swift
//  nimbleChallenge
//
//  Created by mario saldaña martinez on 03/11/23.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive = false
    @State private var opacity = 0.0
    @State private var size = 1.0
    @State private var blur = 0.0
    var contentView = ContentView()

    var body: some View {
        if isActive {
            SignInView()
        }else {
            ZStack {
                Section{
                    Image("splash-image").resizable().aspectRatio(contentMode: .fill).ignoresSafeArea(edges: .all).frame(maxWidth: .infinity, alignment: .center)
                        .blur(radius: blur)
                        .background(.black)
                        .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                }.onAppear{
                    withAnimation(.easeIn(duration: 3.0)) {
                        self.blur = 20.0
                    }
                }
                
                VStack {
                    Image("logo-white")
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.0)) {
                        self.opacity = 1.0
                    }
                }
            }.onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                    self.isActive = true
                })
            }
        }
        
        
    }
}

#Preview {
    SplashScreenView()
}
