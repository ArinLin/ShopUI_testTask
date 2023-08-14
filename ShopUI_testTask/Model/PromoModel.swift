//
//  PromoModel.swift
//  ShopUI_testTask
//
//  Created by Arina on 11.08.2023.
//

import Foundation
import SwiftUI

struct PromoModel: Identifiable {
    var id = UUID().uuidString
    var colors: [Color]
    let textСolor: Color
    let text: String
    let date: String
    let description: String
    
    static let category: [PromoModel] = [
        PromoModel(colors: [Color ("greenPromoLight"), Color ("greenPromoDark")], textСolor: Color ("greenPromoDark"), text: "Скидака до 30%", date: "С 13 по 23 июля", description: "Крутые скидки"),
        PromoModel(colors: [Color( "purplePromoLight"), Color ("purplePromoDark")], textСolor: Color ("purplePromoDark"), text: "Призы за покупки", date: "С 1 по 15 августа", description: "До 5000 рублей"),
        PromoModel(colors: [Color ("bluePromoLight"), Color ("bluePromoDark")], textСolor: Color ("bluePromoDark"), text: "Доставка 0 рублей", date: "Весь август", description: "Привезем бесплатно"),
        PromoModel(colors: [Color ("seaPromoLight"), Color ("seaPromoDark")], textСolor: Color ("seaPromoDark"), text: "Ягоды в подарок", date: "С 10 по 22 августа", description: "Спелые и сочные"),
    ]
}
                                                                                                                                                                             
