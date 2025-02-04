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
            Image(notification.profileImage)
                .resizable()
                .clipShape(Circle())
                .frame(width: 50, height: 50)

            VStack(alignment: .leading) {
                HStack{
                    Text(notification.username)
                        .font(.system(size: 12, weight: .bold))
                    Text(notification.message)
                        .font(.system(size: 12, weight: .bold))
                }
                HStack(spacing: 5) {
                    Text(notification.timestamp)
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
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleNotificationData = NotificationData(id: 1, profileImage: "00", username: "Jordan Artzy-Mccendie", timestamp: "1d", message: "likes a Post on your timeline", iconImage: "hand.thumbsup.circle.fill")
        
        NotificationView(notification: sampleNotificationData)
            .previewLayout(.sizeThatFits)
    }
}
