//
//  TabScreen.swift
//  Facebook_Clone_Jordan
//
//  Created by english on 2025-01-30.
//

import SwiftUI

struct TabScreen: View {
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            VideoScreen()
                .tabItem {
                    Image(systemName: "play.tv")
                    Text("Videos")
                }
            MarketplaceScreen()
                .tabItem {
                    Image(systemName: "storefront")
                    Text("Marketplace")
                }
            NotificationsScreen()
                .tabItem {
                    Image(systemName: "bell")
                    Text("Notifications")
                }
            MenuScreen()
                .tabItem {
                    Image(systemName: "line.3.horizontal")
                    Text("Menu")
                }
        }
        .accentColor(.blue)
    }
}

struct TabScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabScreen()
    }
}
