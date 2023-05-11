//
//  DigitalWardrobeView.swift
//  FashionAssistant
//
//  Created by Stan Ciprian on 10.05.2023.
//

import SwiftUI
import SDWebImageSwiftUI

struct DigitalWardrobeView: View {
    @ObservedObject private var clothingRepository = ClothingRepository()

    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100), spacing: 16)], spacing: 16) {
                ForEach(clothingRepository.clothingItems) { clothingItem in
                    WebImage(url: URL(string: clothingItem.imageUrl))
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}
