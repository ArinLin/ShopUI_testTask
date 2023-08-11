//
//  TitleView.swift
//  ShopUI_testTask
//
//  Created by Arina on 11.08.2023.
//

import SwiftUI

struct TitleView: View {
    @State var title: String = "Title"
    var didTap: (()->())?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.system(size: 24, weight: .semibold, design: .default))
                .foregroundColor(Color.black)
        }
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
