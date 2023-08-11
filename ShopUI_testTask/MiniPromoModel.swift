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
    
    static let categories = [
        MiniPromoModel(title: "Абонемент на кофе", color: "seaBlue"),
        MiniPromoModel(title: "Мои скидки", color: "pink"),
        MiniPromoModel(title: "Карта в подарок", color: "paleGreen"),
        MiniPromoModel(title: "Доставка за час", color: "paleBlue")
    ]
}
