//
//  FruitModel.swift
//  UIProgression3
//
//  Created by apple on 23/03/23.
//

import SwiftUI

// MARK: - Fruits Data Model
 
struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
