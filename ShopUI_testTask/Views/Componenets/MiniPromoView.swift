//
//  MiniPromoView.swift
//  ShopUI_testTask
//
//  Created by Arina on 11.08.2023.
//

import SwiftUI

struct MiniPromoView: View {
    var item: MiniPromoModel
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(Color(item.color))
                .frame(width: 120, height: 153)
            
            VStack(alignment: .center) {
                Text(item.title)
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding(.top, 10)
                    .frame(width: 120, height: 80)
                
                Image(systemName: item.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .padding(.bottom, 10)
                    .foregroundColor(.black)
            }
            .padding()
        }
    }
}

struct MiniPromoView_Previews: PreviewProvider {
    static var previews: some View {
        MiniPromoView(item: MiniPromoModel.init(title: "Абонемент на кофе", color: "pink", image: "cup.and.saucer.fill"))
    }
}
