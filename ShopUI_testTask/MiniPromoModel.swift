//
//  MiniPromoModel.swift
//  ShopUI_testTask
//
//  Created by Arina on 11.08.2023.
//

import Foundation
import SwiftUI

struct MiniPromoModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    let color: String
    let image: String
    
    static let categories = [
        MiniPromoModel(title: "Абонемент на кофе", color: "seaBlue", image: "cup.and.saucer.fill"),
        MiniPromoModel(title: "Мои скидки", color: "pink", image: "percent"),
        MiniPromoModel(title: "Карта в подарок", color: "paleGreen", image: "creditcard.fill"),
        MiniPromoModel(title: "Доставка за час", color: "paleBlue", image: "figure.walk.motion")
    ]
}
