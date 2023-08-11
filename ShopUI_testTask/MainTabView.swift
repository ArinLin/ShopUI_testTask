//
//  MainTabView.swift
//  ShopUI_testTask
//
//  Created by Arina on 11.08.2023.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case shop
    case explore
    case cart
    case profile
}

struct MainTabView: View {
    
    @State private var selectedTab: Tab = .shop
        
        var body: some View {
            VStack {
                Spacer()
                if selectedTab == .shop {
                    HomeView()
                } else if selectedTab == .explore {
                    Text("Explore View")
                } else if selectedTab == .cart {
                    Text("Cart View")
                } else if selectedTab == .profile {
                    Text("Profile View")
                }
                
                Spacer()
                
                Divider()
                
                HStack {
                    tabButton(selectedTab: .shop,
                              imageName: "shop",
                              title: "Главная")
                    tabButton(selectedTab: .explore,
                              imageName: "explore",
                              title: "Каталог")
                    tabButton(selectedTab: .cart,
                              imageName: "shopping_cart",
                              title: "Корзина")
                    tabButton(selectedTab: .profile,
                              imageName: "profile",
                              title: "Профиль")
                }
            }
        }
        
        @ViewBuilder
        func tabButton(selectedTab: Tab, imageName: String, title: String) -> some View {
            Button(action: {
                self.selectedTab = selectedTab
            }) {
                VStack {
                    Image(imageName)
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(selectedTab == self.selectedTab ? .green : .black)
                    Text(title)
                        .font(.custom("Helvetica Regular", size: 12))
                        .foregroundColor(selectedTab == self.selectedTab ? .green : .black)
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: 60)
        }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
