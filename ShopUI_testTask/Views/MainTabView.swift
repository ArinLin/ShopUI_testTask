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
            VStack(spacing: 0) {
                Spacer()
                switch selectedTab {
                case .shop:
                    HomeView()
                case .explore:
                    ExploreView()
                case .cart:
                    CartView()
                case .profile:
                    ProfileView()
                }

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
                .background(Color("tabbarBG").ignoresSafeArea())
                .shadow(radius: 15)
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
                        .renderingMode(.template)
                        .foregroundColor(selectedTab == self.selectedTab ? .green : .black)
                        .frame(width: 25, height: 25)
                    Text(title)
                        .font(.system(size: 12))
                        .foregroundColor(selectedTab == self.selectedTab ? .green : .black)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 60)
        }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
