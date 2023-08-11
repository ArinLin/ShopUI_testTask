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
    static let colors: [PromoModel] = [
        PromoModel(colors: [Color ("greenPromoLight"), Color ("greenPromoDark")]),
        PromoModel(colors: [Color( "purplePromoLight"), Color ("purplePromoDark")]),
        PromoModel(colors: [Color ("bluePromoLight"), Color ("bluePromoDark")]),
    ]
}
                                                                                                                                                                             
