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
        VStack(spacing: 0) {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color(item.color))
                    .frame(width: 150, height: 190)
                Spacer()
                
                VStack(alignment: .center) {
                    Spacer()
                    Text(item.title)
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.top, 10)
                        .frame(width: 150, height: 100)
                    
                    Image(systemName: "cup.and.saucer.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.black)
                    
                    Spacer()
                }
                .padding()
            }
        }
    }
}

struct MiniPromoView_Previews: PreviewProvider {
    static var previews: some View {
        MiniPromoView(item: MiniPromoModel.init(title: "Абонемент на кофе", color: "pink"))
    }
}
