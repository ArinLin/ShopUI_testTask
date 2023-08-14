//
//  SearchView.swift
//  ShopUI_testTask
//
//  Created by Arina on 11.08.2023.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var txt: String
    var body: some View {
        HStack {
            HStack(spacing: 15) {
                Image ("location")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                TextField("Москва, Москва и Московская область", text: $txt)
                    .font(.custom("Helvetica Regular", size: 16))
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .frame(minWidth: 0, maxWidth: .infinity)
            }
            .padding(15)
            .background(Color.clear)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.gray, lineWidth: 1)
            )
            .frame(height: 20)
            
            Button(action: {
                print("Кнопка меню нажата")
            }) {
                Image("menu")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(.green)
                    .frame(width: 25, height: 25)
            }
        }
        .padding(10)
        Divider()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(txt: .constant(""))
    }
}
