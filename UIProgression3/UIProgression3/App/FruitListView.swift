//
//  FruitDetailview.swift
//  UIProgression3
//
//  Created by apple on 23/03/23.
//

import SwiftUI

struct FruitListView: View {
    // MARK: - Properties
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    // MARK: - Body
    var body: some View {
        NavigationView {
            List(fruits) { fruit in
                NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                Button {
                    isShowingSettings = true
                } label: {
                    Image(systemName: "slider.horizontal.3")
                } //: Button
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            }
        } //: NavigationView
    }
}

// MARK: - Preview

struct FruitListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView(fruits: fruitsData)
    }
}
