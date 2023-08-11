//
//  HomeView.swift
//  ShopUI_testTask
//
//  Created by Arina on 11.08.2023.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var homeVM = HomeViewModel.shared
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    Spacer()
                    SearchView(txt: $homeVM.txtSearch)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 0) {
                            ForEach(PromoModel.colors) { colors in
                                VStack {
                                    GeometryReader { geo in
                                        PromoView(colors: colors.colors)
                                            .rotation3DEffect (
                                                .degrees(-Double( geo.frame(in: .global) .minX) / 25), axis: (x: 0, y: 1, z: 0))
                                    }
                                    .frame(width: 300, height: 250)
                                }
                            }
                        }
                    }
                    Spacer()
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
