//
//  HomeViewModel.swift
//  ShopUI_testTask
//
//  Created by Arina on 11.08.2023.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var txtSearch: String = ""
    @Published var isSearchBarVisible = false
}
