//
//  ProductView.swift
//  ShopUI_testTask
//
//  Created by Arina on 11.08.2023.
//

import SwiftUI

struct ProductView: View {
    var item: ProductModel
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color.white)
                    .frame(width: 140, height: 173)
                
                VStack(alignment: .center, spacing: 5) {
                    Image(systemName: item.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.black)
                    HStack {
                        VStack {
                            Text(item.price)
                                .font(.system(size: 16, weight: .semibold, design: .default))
                                .foregroundColor(.black)
                                .padding(.top, 10)
                                .padding(.leading, 2)
                            
                            Text(item.oldPrice ?? "")
                                .font(.system(size: 12, weight: .semibold, design: .default))
                                .foregroundColor(.black)
                                .strikethrough()
                                .padding(.leading, 2)
                        }
                        Image(systemName: "cart.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.green)
                            .padding(.trailing, 2)
                            .padding(.leading, 0)
                            .padding(.top, 10)
                    }
                }
                .padding()
            }
            .shadow(color: .black.opacity(0.2), radius: 10, x: 2, y: 2)
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(item: ProductModel.init(price: "455 ₽", oldPrice: "800 ₽", image: "mug.fill"))
    }
}
