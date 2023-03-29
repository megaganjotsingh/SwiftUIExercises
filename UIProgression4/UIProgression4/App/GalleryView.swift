//
//  GalleryView.swift
//  UIProgression4
//
//  Created by apple on 24/03/23.
//

import SwiftUI

struct GalleryView: View {
    
    // MARK: - Properties
    
    @State var gridLayout: [GridItem] = []
    @State var gridColumn: Double = 3
    let animals: [Animal] = Bundle.main.decode("animals.json")
    @State private var selectedAnimal: String = "lion"
    
    func gridSwitch() {
        gridLayout = Array(repeating: GridItem(.flexible()), count: Int(gridColumn))
    }
    
    // MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 30) {
                // Image
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay {
                        Circle()
                            .stroke(Color.white, lineWidth: 8)
                    }
                Slider(value: $gridColumn, in: 2...6, step: 1)
                    .padding()
                    .onChange(of: gridColumn) { newValue in
                        gridSwitch()
                    }
                // Grid
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals) { animal in
                        Image(animal.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay {
                                Circle().stroke(Color.white, lineWidth: 1)
                            }
                            .onTapGesture {
                                selectedAnimal = animal.image
                            }
                    }
                } //: LazyVGrid
                .onAppear {
                    gridSwitch()
                }
            } //: VStack
        } //: ScrollView
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            MotionAnimationView()
        }
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
