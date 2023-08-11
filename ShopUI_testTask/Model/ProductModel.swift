//
//  ProductModel.swift
//  ShopUI_testTask
//
//  Created by Arina on 11.08.2023.
//

import Foundation
import SwiftUI

struct ProductModel: Identifiable {
    let id = UUID().uuidString
    let price: String
    let oldPrice: String?
    let image: String
    
    static let categories = [
        ProductModel(price: "259.90 ₽", oldPrice: nil, image: "mug.fill"),
        ProductModel(price: "99.90 ₽", oldPrice: nil, image: "carrot.fill"),
        ProductModel(price: "309.90 ₽", oldPrice: "489.90 ₽", image: "birthday.cake.fill"),
        ProductModel(price: "455.90 ₽", oldPrice: "510.90 ₽", image: "wineglass.fill")
    ]
}
