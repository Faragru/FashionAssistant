//
//  ClothingItem.swift
//  FashionAssistant
//
//  Created by Stan Ciprian on 11.05.2023.
//

import Foundation

struct ClothingItem: Identifiable, Codable {
    var id: String
    var name: String
    var brand: String
    var type: String
    var imageUrl: String
}
