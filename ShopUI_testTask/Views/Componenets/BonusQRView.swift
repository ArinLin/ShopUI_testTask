//
//  BonusQRView.swift
//  ShopUI_testTask
//
//  Created by Arina on 11.08.2023.
//

import SwiftUI

struct BonusQRView: View {
    let colors: [Color]
    var body: some View {
            VStack(alignment: .leading) {
                HStack {
                    Text("0 бонусов")
                        .font(.system(size: 24, weight: .semibold, design: .default))
                        .foregroundColor(Color.black)
                        .padding(10)
                        .cornerRadius(8)
                        .padding(10)
                    Text("QR")
                        .font(.system(size: 22, weight: .semibold, design: .default))
                        .foregroundColor(Color.black)
                        .padding(30)
                        .background(Color.white)
                        .cornerRadius(8)
                        .padding(30)
                }
            }
            .frame(width: 338, height: 128)
        .background(Color("grayPromo"))
        .cornerRadius(15)
        .shadow(color: .black.opacity(0.2), radius: 5, x: 4, y: 4)
    }
}

struct BonusQRView_Previews: PreviewProvider {
    static var previews: some View {
        BonusQRView(colors: [Color("grayPromo")])
    }
}
