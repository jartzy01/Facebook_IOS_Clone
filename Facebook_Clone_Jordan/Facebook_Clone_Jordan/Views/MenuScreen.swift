//
//  MenuScreen.swift
//  Facebook_Clone_Jordan
//
//  Created by english on 2025-01-30.
//

import SwiftUI

struct MenuScreen: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    HStack{
                        Text("Menu")
                            .font(.system(size: 35, weight: .bold))
                            .foregroundStyle(.black)
                            .padding(.leading)
                        Spacer()
                        Image(systemName: "gearshape.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                            .padding(.trailing)
                    }
                    HStack{
                        
                    }
                    
                }

            }
            .background(Color.gray.ignoresSafeArea())
        }
    }
}
#Preview {
    MenuScreen()
}
