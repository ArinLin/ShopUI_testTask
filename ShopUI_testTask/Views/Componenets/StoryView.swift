//
//  StoryView.swift
//  ShopUI_testTask
//
//  Created by Arina on 12.08.2023.
//

import SwiftUI

struct StoryView: View {
    var item: StoryModel
    
    var body: some View {
        VStack {
            Button {
                print("посмотреть сторис")
            } label: {
                Image(item.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(6)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle ())
                    .overlay(
                        Circle()
                            .stroke(LinearGradient (gradient: Gradient (colors: [Color("greenPromoLight"), Color("greenPromoDark")]), startPoint:
                                    .leading, endPoint:
                                    .trailing), lineWidth: 2)
                    )
            }
            Text(item.description)
                .font(.system(size: 14, weight: .semibold, design: .default))
                .foregroundColor(.black)
                .frame(width: 85, height: 60)
                .multilineTextAlignment(.center)
                .padding(.bottom, 15)
                .padding(.leading, 2)
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(item: StoryModel.init(image: "drink", description: "Привелегии «‎Мой Spar»‎"))
    }
}
