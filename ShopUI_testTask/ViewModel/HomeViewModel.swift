//
//  HomeViewModel.swift
//  ShopUI_testTask
//
//  Created by Arina on 11.08.2023.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
    static var shared: HomeViewModel = HomeViewModel()

    @Published var txtSearch: String = ""
    @Published var isSearchBarVisible = false
    let searchBarHeight: CGFloat = 50
}
