//
//  MainTabView.swift
//  ShopUI_testTask
//
//  Created by Arina on 11.08.2023.
//

import SwiftUI

enum Tab: String, CaseIterable, Equatable {
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
            
            Divider()
            
            HStack {
                tabButton(selectedTab:.shop,
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
                Text(title)
                    .font(.custom("Helvetica Regular", size: 12))
            }
        }
        .buttonStyle(TabButtonStyle(selected: selectedTab == self.selectedTab))
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 60)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
