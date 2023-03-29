//
//  InsetFactView.swift
//  UIProgression4
//
//  Created by apple on 26/03/23.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - Properties
    let animal: Animal
    // MARK: - Body
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { fact in
                    Text(fact)
                }
            } //: TabView
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } //: GroupBox
    }
}

// MARK: - Preview
struct InsetFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactView(animal: animals[0])
    }
}
