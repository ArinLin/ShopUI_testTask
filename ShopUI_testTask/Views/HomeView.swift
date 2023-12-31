//
//  HomeView.swift
//  ShopUI_testTask
//
//  Created by Arina on 11.08.2023.
//

import SwiftUI

struct HomeView: View {
    
    @State var txtSearch: String = ""
    
    var body: some View {
        VStack {
            SearchView(txt: $txtSearch)
            ScrollView {
                VStack {
                    Spacer()
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 0) {
                            ForEach(StoryModel.categories) { category in
                                VStack {
                                    GeometryReader { geo in
                                        StoryView(item: category)
                                            .rotation3DEffect (
                                                .degrees(-Double( geo.frame(in: .global) .minX) / 55), axis: (x: 1, y: 1, z: 0))
                                    }
                                    .frame(width: 90, height: 110)
                                }
                            }
                        }
                        .padding(5)
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 0) {
                            ForEach(PromoModel.category) { category in
                                VStack {
                                    GeometryReader { geo in
                                        PromoView(item: category)
                                            .rotation3DEffect (
                                                .degrees(-Double( geo.frame(in: .global) .minX) / 25), axis: (x: 0, y: 1, z: 0))
                                    }
                                    .frame(width: 300, height: 170)
                                }
                            }
                        }
                        .padding(.bottom, 15)
                        .padding(.leading, 5)
                        .padding(.trailing, 25)
                    }
                    Spacer()
                    BonusQRView(colors: [Color("grayPromo")])
                        .padding(.leading, 5)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 0) {
                            ForEach(MiniPromoModel.categories) { category in
                                VStack {
                                    GeometryReader { geo in
                                        MiniPromoView(item: category)
                                            .rotation3DEffect (
                                                .degrees(-Double( geo.frame(in: .global) .minX) / 25), axis: (x: 0, y: 0, z: 0))
                                    }
                                    .frame(width: 130, height: 180)
                                }
                            }
                        }
                    }
                    .padding(.leading, 5)

                    HStack() {
                        TitleView(title: "Рекомендуем")
                            .padding(.bottom, 5)
                            .padding(.leading, 15)
                        Spacer()
                    }
                
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 0) {
                            ForEach(ProductModel.categories) { category in
                                VStack {
                                    GeometryReader { geo in
                                        ProductView(item: category)
                                            .rotation3DEffect (
                                                .degrees(-Double( geo.frame(in: .global) .minX) / 25), axis: (x: 0, y: 0, z: 0))
                                    }
                                    .frame(width: 150, height: 190)
                                }
                            }
                        }
                        .padding(.top, 10)
                        .padding(.leading, 15)
                        .padding(.trailing, 15)
                    }
                    HStack() {
                        TitleView(title: "Сладкое настроение")
                            .padding(.bottom, 5)
                            .padding(.leading, 15)
                        Spacer()
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 0) {
                            ForEach(ProductModel.categories) { category in
                                VStack {
                                    GeometryReader { geo in
                                        ProductView(item: category)
                                            .rotation3DEffect (
                                                .degrees(-Double( geo.frame(in: .global) .minX) / 25), axis: (x: 0, y: 0, z: 0))
                                    }
                                    .frame(width: 150, height: 200)
                                }
                            }
                        }
                        .padding(.top, 10)
                        .padding(.leading, 15)
                        .padding(.trailing, 15)
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
