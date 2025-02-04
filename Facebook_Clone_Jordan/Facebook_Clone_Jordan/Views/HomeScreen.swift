//
//  HomeScreen.swift
//  Facebook_Clone_Jordan
//
//  Created by english on 2025-01-30.
//

import SwiftUI

struct HomeScreen: View {
    @State private var showSearchView = false

    let posts: [PostData] = [
        PostData(
            id: 1,
            profileImage: "1",
            username: "Jordan Artzy-Mccendie",
            timestamp: "· 2h",
            message: "Looking for a new course on iOS with SwiftUI? You're already in a great place!",
            postImage: "02",
            likes: 125,
            comments: 14,
            shares: 7
        ),
        PostData(
            id: 2,
            profileImage: "2",
            username: "John Smith",
            timestamp: "· 3h",
            message: "SwiftUI animations are so smooth! 🚀🔥",
            postImage: "03",
            likes: 230,
            comments: 45,
            shares: 12
        )
    ]

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    TopNavBar(showSearchView: $showSearchView)
                    Divider()
                        .background(Color.gray.opacity(0.5))
                        .frame(height: 1)
                    
                    PostInputView()
                    Divider()

                    StoriesSection()
                    Divider()
                 
                    ForEach(posts, id: \.id) { post in
                        PostView(data: post)
                    }
                }
            }
        }
    }
}


struct TopNavBar: View {
    @Binding var showSearchView: Bool
    var body: some View {
        HStack {
            Text("facebook")
                .font(.system(size: 35, weight: .bold))
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
            }) {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.black)
                    .padding()
            }
            .navigationDestination(isPresented: $showSearchView) {
                SearchView()
            }

            Button(action: {
                print("Messages tapped")
            }) {
                Image(systemName: "ellipsis.message.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.black)
                    .padding()
            }
        }
    }
}

struct PostInputView: View {
    var body: some View {
        HStack {
            Image("demo")
                .resizable()
                .clipShape(Circle())
                .frame(width: 50, height: 50)

                .padding(.leading)
            RoundedRectangle(cornerRadius: 50)
                .stroke(Color.gray, lineWidth: 2)
                .frame(height: 40)
                .overlay(
                    HStack {
                        Text("What's on your mind?")
                            .foregroundColor(.gray)
                            .padding(.leading, 15)
                        Spacer()
                    }
                )
                .padding(.horizontal)

            Image(systemName: "photo")
                .resizable()
                .frame(width: 20, height: 30)
                .foregroundColor(.green)
                .padding(.trailing)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
