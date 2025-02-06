//
//  MenuScreen.swift
//  Facebook_Clone_Jordan
//
//  Created by english on 2025-01-30.
//

import SwiftUI

struct MenuScreen: View {
    let items = [
        (image: "suit.heart.fill", label: "Dating"),
        (image: "clock.arrow.circlepath", label: "Memories"),
        (image: "bookmark.fill", label: "Saved"),
        (image: "person.3.fill", label: "Groups"),
        (image: "play.tv.fill", label: "Video"),
        (image: "storefront.fill", label: "Marketplace"),
        (image: "magnifyingglass", label: "Find friends"),
        (image: "newspaper", label: "Feeds")
    ]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    HStack{
                        Text("Menu")
                            .font(.system(size: 35, weight: .bold))
                            .foregroundStyle(.black)
                            .padding(.leading)
                        Spacer()
                        Image(systemName: "gearshape.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                            .padding(.trailing)
                    }
                    VStack {
                        HStack{
                            Image("demo")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 50, height: 50)
                            Text("Jordan Artzy-Mccendie")
                                .font(.system(size: 18, weight: .medium))
                                .foregroundStyle(.black)
                            Spacer().frame(width: 70)
                            Image(systemName: "chevron.down")
                                .resizable()
                                .foregroundStyle(.black)
                                .frame(width: 12, height: 10)
                                .background(
                                    Circle()
                                        .fill(Color.gray.opacity(0.4))
                                        .frame(width: 40, height: 40)
                                )
                            Spacer().frame(width: 15)
                        }
                        Divider().frame(width: 370)
                            .padding(7)
                        HStack{
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .foregroundStyle(.black.opacity(0.6))
                                .frame(width: 40, height: 40)
                                .padding(.leading)
                            VStack{
                                Text("Create new profile or Page")
                                    .foregroundStyle(.black.opacity(0.6))
                                    .font(.system(size: 18.2, weight: .medium))
                                Text("Switch between profiles with one login.")
                                    .foregroundStyle(.black.opacity(0.6))
                                    .font(.system(size: 12, weight: .light))
                            }
                            Spacer()
                        }
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 15).fill(Color.white).frame(width: 380))
                    .cornerRadius(15)
                    .shadow(radius: 5)
                    
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(items, id: \.label) { item in
                            HStack {
                                VStack(alignment: .leading) {
                                    Image(systemName: item.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(.blue)
                                        .padding(.leading)
                                    Text(item.label)
                                        .font(.headline)
                                        .foregroundColor(.black)
                                }
                                .padding(.leading)
                                Spacer()
                            }
                            .frame(width: 184,height: 80)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(radius: 5)
                        }
                    }
                    .padding(.leading)
                    .padding(.trailing)
                }

            }
            .background(Color.gray.opacity(0.4).ignoresSafeArea())
        }
    }
}
#Preview {
    MenuScreen()
}
