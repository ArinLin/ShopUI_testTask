//
//  PromoView.swift
//  ShopUI_testTask
//
//  Created by Arina on 11.08.2023.
//

import SwiftUI

struct PromoView: View {
    var colors: [Color]
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                HStack (alignment: .center) {
                    Text("Cкидка до 30%")
                        .font(.system(size: 12, weight: .semibold, design: .default))
                        .foregroundColor(Color("greenPromoDark"))
                        .padding(10)
                        .background(Color("yellow"))
                        .cornerRadius(8)
                        .padding(10)
                    Text("C 13 по 23 июля")
                        .font(.system(size: 12, weight: .semibold, design: .default))
                        .foregroundColor(Color("greenPromoDark"))
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(8)
                        .padding(10)
                }
                HStack {
                    Text("Крутые скидки")
                        .padding(10)
                        .font(.system(size: 22, weight: .semibold, design: .default))
                        .foregroundColor(Color.white)
                }
            }
        }
        .frame(width: 292, height: 153)
        .background (LinearGradient(colors: colors, startPoint: .leading, endPoint: .trailing))
        .cornerRadius(15)
        .shadow(color: .black.opacity(0.2), radius: 5, x: 4, y: 4)
        .padding()
    }
}

struct PromoView_Previews: PreviewProvider {
    static var previews: some View {
        PromoView(colors: [Color("greenPromoLight"), Color("greenPromoDark")])
    }
}
