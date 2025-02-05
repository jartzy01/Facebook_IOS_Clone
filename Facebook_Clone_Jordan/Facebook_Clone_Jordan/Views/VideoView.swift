//
//  VideoView.swift
//  Facebook_Clone_Jordan
//
//  Created by english on 2025-02-05.
//

import SwiftUI

struct VideoView: View {
    var video: VideoData
    var body: some View {
        ZStack{
            Image(video.VideoImage)
                .resizable()
                .frame(height: 800)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                HStack{
                    ZStack(alignment: .bottomTrailing) {
                        Image(video.ProfileImage)
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 50, height: 50)
                    }
                    
                    VStack(alignment: .leading) {
                        HStack{
                            Text(video.ProfileName)
                                .font(.system(size: 12, weight: .bold))
                                .foregroundColor(.white)
                                .shadow(radius: 1)
                            Text(video.VideoDesc)
                                .font(.system(size: 11, weight: .bold))
                                .foregroundColor(.white)
                                .shadow(radius: 1)
                        }
                    }
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top, 8)
                .padding(.bottom, 40)
               
            }


            HStack{
                Spacer()
                VStack{
                    Spacer()
                    Image(systemName: "hand.thumbsup")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                        .shadow(radius: 1)
                        
                    Text(video.Likes)
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                        .shadow(radius: 1)
                    Image(systemName: "message")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                        .shadow(radius: 1)
                    Text(video.Comments)
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                        .shadow(radius: 1)
                    Image(systemName: "arrowshape.turn.up.right")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                        .shadow(radius: 1)
                    Text(video.Shares)
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                        .shadow(radius: 1)
                    Image(systemName: "phone.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                        .shadow(radius: 1)
                    Text("Send")
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                        .shadow(radius: 1)
                }
                .padding(.trailing)
                .padding(.bottom, 40)
            }

        }
        .edgesIgnoringSafeArea(.all)
    }
}


struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleVideoData = VideoData(id: 1, VideoImage: "15",VideoDesc: "When man travels the stars",Likes: "123",Comments: "45",Shares: "17",ProfileImage: "00",ProfileName: "John Doe"
        )
        VideoView(video: sampleVideoData)
            .previewLayout(.sizeThatFits)
    }
}
