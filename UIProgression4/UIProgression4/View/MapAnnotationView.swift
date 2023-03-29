//
//  MapAnnotationView.swift
//  UIProgression4
//
//  Created by apple on 26/03/23.
//

import SwiftUI

struct MapAnnotationView: View {
    // MARK: - Properties
    let location: NationalParkLocation
    @State private var animation: Double = 0.0
    
    // MARK: - Body
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 54)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
            .clipShape(Circle())
        }
        .onAppear {
            withAnimation(.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

// MARK: - Preview
struct MapAnnotationView_Previews: PreviewProvider {
    static let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    static var previews: some View {
        MapAnnotationView(location: locations[0])
    }
}
