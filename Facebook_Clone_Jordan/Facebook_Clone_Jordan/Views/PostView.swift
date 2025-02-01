//
//  PostView.swift
//  Facebook_Clone_Jordan
//
//  Created by english on 2025-01-30.
//

import SwiftUI

struct PostView: View {
    var data: PostData
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Image(data.profileImage)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)

                VStack(alignment: .leading) {
                    Text(data.username)
                        .font(.headline)
                        .fontWeight(.bold)
                    
                    HStack(spacing: 5) {
                        Text(data.timestamp)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Image(systemName: "globe")
                            .resizable()
                            .frame(width: 12, height: 12)
                            .foregroundColor(.gray)
                    }
                }
                Spacer()
                Image(systemName: "ellipsis")
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
            .padding(.top, 8)

            if !data.message.isEmpty {
                Text(data.message)
                    .padding(.horizontal)
                    .padding(.top, 4)
                    .font(.body)
            }

            if let imageName = data.postImage {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity)
                    .clipped()
            }

            HStack {
                HStack(spacing: 5) {
                    Image(systemName: "hand.thumbsup.fill")
                        .foregroundColor(.blue)
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                    Image(systemName: "face.smiling.fill")
                        .foregroundColor(.yellow)
                    Text("\(data.likes)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                Text("\(data.comments) Comments · \(data.shares) Shares")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
            .padding(.vertical, 8)

            Divider()

            HStack {
                PostActionButton(icon: "hand.thumbsup", text: "Like")
                Spacer()
                PostActionButton(icon: "bubble.right", text: "Comment")
                Spacer()
                PostActionButton(icon: "arrowshape.turn.up.right", text: "Share")
            }
            .padding(.horizontal)
            .padding(.vertical, 6)

            Divider()
                
        }
    }
}

struct PostActionButton: View {
    var icon: String
    var text: String

    var body: some View {
        HStack {
            Image(systemName: icon)
                .resizable()
                .frame(width: 20, height: 20)
            Text(text)
                .font(.subheadline)
        }
        .foregroundColor(.gray)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        let samplePostData = PostData(
            id: 1,
            profileImage: "1",
            username: "Jordan Artzy-Mccendie",
            timestamp: "· 2h",
            message: "Looking for a new course on iOS with SwiftUI? You're already in a great place!",
            postImage: "02",
            likes: 125,
            comments: 14,
            shares: 7
        )
        
        PostView(data: samplePostData)
            .previewLayout(.sizeThatFits)
    }
}
