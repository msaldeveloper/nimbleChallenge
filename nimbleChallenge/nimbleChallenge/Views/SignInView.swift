//
//  SignInView.swift
//  nimbleChallenge
//
//  Created by mario saldaña martinez on 03/11/23.
//

import SwiftUI

struct SignInView: View {
    @State private var isActive = false
    @State private var size = 1.0
    var body: some View {
        ZStack {
            Section{
                Image("splash-image").resizable().aspectRatio(contentMode: .fill).ignoresSafeArea(edges: .all).frame(maxWidth: .infinity, alignment: .center)
                    .blur(radius: 20.0)
                    .background(.black)
                    .opacity(1.0)
            }
            
            VStack {
                Image("logo-white").resizable().frame(width: 167.84, height: 40, alignment: .center)
                InitSessionView()
            }

            
        }
    }
}

#Preview {
    SignInView()
}
