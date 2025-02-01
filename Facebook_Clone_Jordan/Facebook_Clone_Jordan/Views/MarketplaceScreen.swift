//
//  MarketplaceScreen.swift
//  Facebook_Clone_Jordan
//
//  Created by english on 2025-01-30.
//

import SwiftUI

struct MarketplaceScreen: View {
    @State private var showSearchView = false

    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("Marketplace")
                        .font(.system(size: 35, weight: .bold))
                        .foregroundStyle(.black)
                        .padding(.leading)

                    Spacer()

                    Button(action: {
                        print("Messages tapped")
                    }) {
                        Image(systemName: "person.crop.circle")
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
                            .padding(.trailing)
                    }
                    .navigationDestination(isPresented: $showSearchView) {
                        SearchView()
                    }
                }
                
                Divider()
                ScrollView{
                    HStack(spacing: 10) {
                        RoundedRectangle(cornerRadius: 50)
                            .foregroundColor(Color.gray.opacity(0.5))
                            .frame(height: 40)
                            .frame(maxWidth: .infinity)
                            .overlay(
                                HStack {
                                    Image(systemName: "tag.fill")
                                        .foregroundColor(.black)
                                    Text("Selling")
                                        .foregroundColor(.black)
                                    Spacer()
                                }
                                .padding(.leading, 20)
                            )

                        RoundedRectangle(cornerRadius: 50)
                            .foregroundColor(Color.gray.opacity(0.5))
                            .frame(height: 40)
                            .frame(maxWidth: .infinity)
                            .overlay(
                                HStack {
                                    Image(systemName: "list.bullet")
                                        .foregroundColor(.black)
                                    Text("Categories")
                                        .foregroundColor(.black)
                                    Spacer()
                                }
                                .padding(.leading, 20)
                            )
                    }
                    .padding(.horizontal)

                    Divider()
              
                    HStack(spacing: 5) {
                        Text("Today's picks")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundStyle(.black)
                        
                        Image(systemName: "location.circle")
                            .foregroundColor(.blue)

                        Text("Montreal, Quebec - 20 km")
                            .foregroundColor(.blue)

                        Spacer()
                    }
                    .padding(.horizontal)
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 15) {
                        ForEach(1..<7) { index in
                            MarketplaceItemView(imageName: "product\(index)", title: "Item \(index)", price: "$\(index * 20)")
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

struct MarketplaceItemView: View {
    var imageName: String
    var title: String
    var price: String

    var body: some View {
        VStack(alignment: .leading) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))

            Text(title)
                .font(.headline)
                .foregroundColor(.black)

            Text(price)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding(10)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(radius: 2)
    }
}

struct MarketplaceView_Previews: PreviewProvider {
    static var previews: some View {
        MarketplaceScreen()
    }
}
