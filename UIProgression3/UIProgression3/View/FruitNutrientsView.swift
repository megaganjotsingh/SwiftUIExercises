//
//  FruitNutrientsView.swift
//  UIProgression3
//
//  Created by apple on 23/03/23.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - Properties
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]

    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value as per 100gm") {
                ForEach(0..<fruit.nutrition.endIndex, id: \.self) { index in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[index])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        Spacer(minLength: 24)
                        Text(fruit.nutrition[index])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
    }
}
