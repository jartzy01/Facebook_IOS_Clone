//
//  NotificationView.swift
//  Facebook_Clone_Jordan
//
//  Created by english on 2025-02-04.
//

import SwiftUI

struct NotificationView: View {
    var notification: NotificationData
    var body: some View {
        HStack {
            ZStack(alignment: .bottomTrailing) {
                Image(notification.profileImage)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
                
                Image(systemName: notification.iconImage)
                    .resizable()
                    .frame(width: 25, height: 25)
                    .clipShape(Circle())
                    .shadow(radius: 2)
                    .foregroundColor(.blue)
                    .background(Circle().fill(Color.white))
            }
            
            VStack(alignment: .leading) {
                HStack{
                    Text(notification.username)
                        .font(.system(size: 12, weight: .bold))
                    Text(notification.message)
                        .font(.system(size: 11, weight: .bold))
                        .foregroundColor(.gray)
                }
                HStack(spacing: 5) {
                    Text(notification.timestamp)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            Spacer()
            Image(systemName: "ellipsis")
                .foregroundColor(.gray)
        }
        .padding(.horizontal)
        .padding(.top, 8)
        .padding(.bottom, 8)
        .background((Color.blue.opacity(0.5)))
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleNotificationData = NotificationData(id: 1, profileImage: "00", username: "Jordan Artzy-Mccendie", timestamp: "1d", message: "likes a Post on your timeline", iconImage: "hand.thumbsup.circle.fill")
        
        NotificationView(notification: sampleNotificationData)
            .previewLayout(.sizeThatFits)
    }
}
