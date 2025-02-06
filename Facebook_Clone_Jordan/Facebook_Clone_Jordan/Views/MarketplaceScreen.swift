//
//  MarketplaceScreen.swift
//  Facebook_Clone_Jordan
//
//  Created by english on 2025-01-30.
//

import SwiftUI

struct MarketplaceScreen: View {
    @State private var showSearchView = false
    let items: [MarketData] = [
        MarketData(imageName: "1", title: "Item 1", price: "$20"),
        MarketData(imageName: "2", title: "Item 2", price: "$40"),
        MarketData(imageName: "3", title: "Item 3", price: "$60"),
        MarketData(imageName: "4", title: "Item 4", price: "$80"),
        MarketData(imageName: "5", title: "Item 5", price: "$100"),
        MarketData(imageName: "6", title: "Item 6", price: "$122"),
        MarketData(imageName: "7", title: "Item 7", price: "$190"),
        MarketData(imageName: "8", title: "Item 8", price: "$200"),
        MarketData(imageName: "9", title: "Item 9", price: "$100"),
        MarketData(imageName: "10", title: "Item 10", price: "$100"),
        MarketData(imageName: "11", title: "Item 11", price: "$100"),
        MarketData(imageName: "12", title: "Item 12", price: "$120")
    ]
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
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                        ForEach(items) { item in
                            MarketplaceItemView(item: item)
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

struct MarketplaceItemView: View {
    let item: MarketData
    var body: some View {
        VStack(alignment: .leading) {
            Image(item.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 170, height: 170)
                   .clipShape(RoundedRectangle(cornerRadius: 10))
                   .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 0))
            HStack{
                Text(item.price)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text(item.title)
                    .font(.headline)
                    .foregroundColor(.black)
            }
        }
        .padding(4)
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
