//
//  TabView.swift
//  Facebook_Clone_Jordan
//
//  Created by english on 2025-01-30.
//
import SwiftUI

struct TabScreen: View {
    @State private var showMenu = false
    @State private var showSearchView = false
    var body: some View {
        NavigationStack {
            VStack{
                HStack{
                    Text("facebook")
                        .font(.system(size:35, weight: .bold))
                        .foregroundStyle(.blue)
                        .padding()
                    
                    Spacer()
                    Menu {
                        Button(action: { print("Post tapped") }) {
                            Label("Post", systemImage: "square.and.pencil")
                        }
                        Button(action: { print("Story tapped") }) {
                            Label("Story", systemImage: "book")
                        }
                        Button(action: { print("Reel tapped") }) {
                            Label("Reel", systemImage: "film")
                        }
                        Button(action: { print("Live tapped") }) {
                            Label("Live", systemImage: "video.fill")
                        }
                        Button(action: { print("Note tapped") }) {
                            Label("Note", systemImage: "bubble.left.and.bubble.right")
                        }
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                    }
                    
                    Button(action: {
                        showSearchView.toggle()
                    }){
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                            .padding()
                    }
                    NavigationLink(value: showSearchView) {
                        EmptyView()
                    }
                    .navigationDestination(for: Bool.self) { _ in
                        SearchView()}
                    
                    Button(action: {
                        showSearchView.toggle()
                    }){
                        Image(systemName: "ellipsis.message.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                            .padding()
                    }
                    NavigationLink(value: showSearchView) {
                        EmptyView()
                    }
                    .navigationDestination(for: Bool.self) { _ in
                        SearchView()}
                }
                
                
                TabView{
                    HomeScreen()
                        .tabItem{
                            Image(systemName: "house")
                        }
                    VideoScreen()
                        .tabItem{
                            Image(systemName: "play.tv")
                        }
                    MarketplaceScreen()
                        .tabItem{
                            Image(systemName: "storefront")
                        }
                    DatingScreen()
                        .tabItem{
                            Image(systemName: "heart")
                        }
                    NotificationsScreen()
                        .tabItem{
                            Image(systemName: "line.3.horizontal")
                        }
                }
                .padding(.top, 10)
                Divider()
            }
        }
    }
}


struct TabView_Previews: PreviewProvider {
    static var previews: some View{
        TabScreen()
    }
}
