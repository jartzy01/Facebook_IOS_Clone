//
//  HomeScreen.swift
//  Facebook_Clone_Jordan
//
//  Created by english on 2025-01-30.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ScrollView {
            VStack {
                Color.gray
                    .ignoresSafeArea(edges: .top)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.gray, lineWidth: 2)
                            .frame(width: 130, height: 200)
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.gray, lineWidth: 2)
                            .frame(width: 130, height: 200)
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.gray, lineWidth: 2)
                            .frame(width: 130, height: 200)
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.gray, lineWidth: 2)
                            .frame(width: 130, height: 200)
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.gray, lineWidth: 2)
                            .frame(width: 130, height: 200)
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.gray, lineWidth: 2)
                            .frame(width: 130, height: 200)
                    }
                    .padding()
                }
                VStack {
                    PostView()
                }
            }
        }
    }
}

#Preview {
    HomeScreen()
}
