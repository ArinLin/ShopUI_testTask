//
//  StoryModel.swift
//  ShopUI_testTask
//
//  Created by Arina on 12.08.2023.
//

import Foundation
import SwiftUI

struct StoryModel: Identifiable {
    let id = UUID().uuidString
    let image: String
    let description: String
    
    static let categories = [
        StoryModel(image: "cake", description: "Привелегии «‎Мой Spar»‎"),
        StoryModel(image: "chicken", description: "Мы в соцсетях"),
        StoryModel(image: "drink", description: "3 рецепта коктейлей"),
        StoryModel(image: "pizza", description: "Дегустации в Spar"),
        StoryModel(image: "potato", description: "Новинки недели"),
        StoryModel(image: "sushi", description: "Сейчас сезон"),
    ]
}
