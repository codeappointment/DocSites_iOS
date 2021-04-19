//
//  ScrapingItem.swift
//  DocSites
//
//  Created by Shahriar Nasim Nafi on 18/4/21.
//

import Foundation

struct ScrapingItem: Identifiable {
    let id = UUID()
    let title: String
    let url: String
}

