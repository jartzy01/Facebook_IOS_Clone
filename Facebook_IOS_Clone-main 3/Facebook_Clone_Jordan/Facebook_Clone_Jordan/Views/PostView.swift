//
//  PostView.swift
//  Facebook_Clone_Jordan
//
//  Created by Gabriela Artzi on 2025-01-30.
//

import SwiftUI
struct SocialView{
    var ids: Int
    var image: String
    var title: String
}

var socialView: [SocialView] = [
    .init(ids: 0, image: "hand.thumbsup",title: "like"),
    .init(ids: 1, image: "text,bubble",title: "comment"),
    .init(ids: 2, image: "arrowshape.turn.up.right",title: "share"),
    .init(ids: 3, image: "message",title: "send")
]

let samplePostData = PostData(id: 1, Image: "02", message: "testing message.", profileImage: "1", likes: 50, shares: 7, title: "Jordan Artzy-Mccendie")

struct PostView: View {
    var data: PostData
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width:.infinity, height: 10)
                .ignoresSafeArea(.all)
            HStack(){
                Image(data.profileImage)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                VStack(alignment: .leading){
                    Text(data.title)
                        .font(.body)
                    Text("\(data.likes) Likes")
                        .font(.caption)
                }
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.horizontal)
            Text("looking for a new course on IOS with swiftUI, you are already at great place.")
            Image(data.Image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: 200)
            Divider()
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(data: samplePostData)
    }
}
