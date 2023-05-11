//
//  ClothingRepository.swift
//  FashionAssistant
//
//  Created by Stan Ciprian on 11.05.2023.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift
import FirebaseAuth

class ClothingRepository: ObservableObject {
    private let db = Firestore.firestore()
    
    @Published var clothingItems = [ClothingItem]()
    
    init() {
        loadData()
    }
    
    private func loadData() {
        if let userId = Auth.auth().currentUser?.uid {
            db.collection("users").document(userId).collection("clothingItems")
                .order(by: "name")
                .addSnapshotListener { (querySnapshot, error) in
                    if let querySnapshot = querySnapshot {
                        self.clothingItems = querySnapshot.documents.compactMap { document in
                            try? document.data(as: ClothingItem.self)
                        }
                    }
                }
        }
    }
    
    func addClothingItem(_ clothingItem: ClothingItem) {
        if let userId = Auth.auth().currentUser?.uid {
            do {
                let _ = try db.collection("users").document(userId).collection("clothingItems").addDocument(from: clothingItem)
            } catch {
                fatalError("Unable to add clothing item: \(error.localizedDescription)")
            }
        }
    }
    
    func updateClothingItem(_ clothingItem: ClothingItem) {
        let clothingItemId = clothingItem.id
        if let userId = Auth.auth().currentUser?.uid {
            do {
                try db.collection("users").document(userId).collection("clothingItems").document(clothingItemId).setData(from: clothingItem)
            } catch {
                fatalError("Unable to update clothing item: \(error.localizedDescription)")
            }
        }
    }

    func removeClothingItem(_ clothingItem: ClothingItem) {
        let clothingItemId = clothingItem.id
        if let userId = Auth.auth().currentUser?.uid {
            db.collection("users").document(userId).collection("clothingItems").document(clothingItemId).delete()
        }
    }

}
