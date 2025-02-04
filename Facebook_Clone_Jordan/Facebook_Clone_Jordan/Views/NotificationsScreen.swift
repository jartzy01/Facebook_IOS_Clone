//
//  NotificationsScreen.swift
//  Facebook_Clone_Jordan
//
//  Created by english on 2025-01-30.
//

import SwiftUI

struct NotificationsScreen: View {
    let notifications: [NotificationData] = [
        NotificationData(id: 1, profileImage: "00", username: "Jordan Artzy-Mccendie", timestamp: "1d", message: "likes a Post on your timeline", iconImage: "hand.thumbsup.circle.fill"),
        NotificationData(id: 2, profileImage: "01", username: "Jerome Idon", timestamp: "3d", message: "posted on your timeline", iconImage: "shared.with.you.circle.fill"),
        NotificationData(id: 3, profileImage: "02", username: "Karen Wong", timestamp: "10d", message: "likes a Post on your timeline", iconImage: "hand.thumbsup.circle.fill"),
        NotificationData(id: 4, profileImage: "03", username: "Heather Hunt", timestamp: "11d", message: "added a photo", iconImage: "photo.circle.fill"),
        NotificationData(id: 5, profileImage: "04", username: "Devon Jones", timestamp: "13d", message: "Likes a Post on your timeline", iconImage: "hand.thumbsup.circle.fill"),
        NotificationData(id: 6, profileImage: "05", username: "Baby Itsa", timestamp: "16d", message: "'s birthday was 16 days ago", iconImage: "birthday.cake.fill")
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 0) {
                    HStack {
                        Text("Notifications")
                            .font(.system(size: 30, weight: .bold))
                            .foregroundStyle(.black)
                            .padding(.leading)
                        Spacer()
                        Image(systemName: "ellipsis")
                            .resizable()
                            .frame(width: 15, height: 4)
                        
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(.trailing)
                    }
                    HStack {
                        Text("Earlier")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundStyle(.black)
                            .padding(.leading)
                            .padding(.top)
                        Spacer()
                    }
                    Spacer()
                    ForEach(notifications, id: \.id) { notification in
                        NotificationView(notification: notification)
                    }
                    Spacer()
                    RoundedRectangle(cornerRadius: 9)
                        .foregroundStyle(.gray.opacity(0.4))
                        .frame(height: 40)
                        .overlay(
                            HStack {
                                Text("See previous notifications")
                                    .foregroundColor(.black)
                                    .padding(.leading, 80)
                                Spacer()
                            }
                        )
                        .padding(.horizontal)

                }
            }
        }
    }
}

#Preview {
    NotificationsScreen()
}
