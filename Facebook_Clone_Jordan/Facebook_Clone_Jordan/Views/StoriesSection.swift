import SwiftUI

struct StoriesSection: View {
    let stories: [StoryData] = [
        StoryData(id: 0, profileImage: "1", storyImage: "7", username: "Your Story"),
        StoryData(id: 1, profileImage: "2", storyImage: "8", username: "Jordan A."),
        StoryData(id: 2, profileImage: "3", storyImage: "9", username: "John Smith"),
        StoryData(id: 3, profileImage: "4", storyImage: "10", username: "Emily Doe"),
        StoryData(id: 4, profileImage: "5", storyImage: "6", username: "Alice Brown")
    ]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(stories) { story in
                    StoryCard(story: story)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct StoryCard: View {
    var story: StoryData

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(story.storyImage)
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 15))

            VStack {
                if story.id == 0 {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white.opacity(0.7))
                            .frame(width: 120, height: 200)

                        VStack {
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .foregroundColor(.blue)
                                .background(Circle().fill(Color.white))
                                .padding(.top, 20)

                            Spacer()

                            Text(story.username)
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                                .padding(.bottom, 10)
                        }
                    }
                } else {
                    VStack {
                        HStack {
                            Image(story.profileImage)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                        .stroke(Color.blue, lineWidth: 3)
                                )
                                .padding(8)
                            
                            Spacer()
                        }
                        Spacer()
                    }

                    // Name Overlay
                    LinearGradient(
                        gradient: Gradient(colors: [Color.black.opacity(0.8), Color.clear]),
                        startPoint: .bottom,
                        endPoint: .top
                    )
                    .frame(height: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                    Text(story.username)
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.horizontal, 8)
                        .padding(.bottom, 10)
                }
            }
        }
        .frame(width: 120, height: 200)
    }
}

struct StoriesSection_Previews: PreviewProvider {
    static var previews: some View {
        StoriesSection()
            .previewLayout(.sizeThatFits)
    }
}
