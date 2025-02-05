//
//  VideoScreen.swift
//  Facebook_Clone_Jordan
//
//  Created by english on 2025-01-30.
//

import SwiftUI

struct VideoScreen: View {
    let videos = [
        VideoData(id: 1, VideoImage: "15", VideoDesc: "When man travels the stars", Likes: "123", Comments: "45", Shares: "17", ProfileImage: "00", ProfileName: "John Doe"),
        VideoData(id: 2, VideoImage: "14", VideoDesc: "The journey of life", Likes: "456", Comments: "67", Shares: "23", ProfileImage: "01", ProfileName: "Jane Smith"),
        VideoData(id: 3, VideoImage: "13", VideoDesc: "i needed to write some kind of message", Likes: "401", Comments: "87", Shares: "18", ProfileImage: "02", ProfileName: "Robert HorseRadish"),
        VideoData(id: 4, VideoImage: "12", VideoDesc: "gosh i have written allot of test messages", Likes: "5k", Comments: "2k", Shares: "321", ProfileImage: "02", ProfileName: "Robert HorseRadish"),
    ]
    var body: some View {
        ZStack{
            VStack{
                ScrollView{
                    ForEach(videos) { video in
                        VideoView(video: video)
                    }
                }
                .padding(.bottom,80)
            }
            .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Text("Video")
                        .font(.system(size: 35, weight: .bold))
                        .foregroundStyle(.white)
                        .padding(.leading)
                    Spacer()
                    Image(systemName: "camera")
                        .resizable()
                        .frame(width: 35, height: 30)
                        .foregroundColor(.white)
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                        .padding(.trailing)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    VideoScreen()
}
