//
//  MotionAnimationView.swift
//  UIProgression4
//
//  Created by apple on 26/03/23.
//

import SwiftUI

struct MotionAnimationView: View {
    
    // MARK: - Properties
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating: Bool = false
    
    // MARK: - Functions
    
    func randomCord(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    
    func randomSize() -> CGFloat {
        return CGFloat.random(in: 10...300)
    }
    
    func randomScale() -> CGFloat {
        CGFloat.random(in: 0.1...2.0)
    }
    
    func randomSpeed() -> Double {
        Double.random(in: 0.025...1)
    }
    
    func randomDelay() -> Double {
        .random(in: 0...2)
    }
    
    // MARK: - Body
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .frame(width: randomSize())
                        .opacity(0.15)
                        .scaleEffect(randomScale())
                        .position(
                            x: randomCord(max: geometry.size.width),
                            y: randomCord(max: geometry.size.height)
                        )
                        .animation(.interpolatingSpring(stiffness: 0.5, damping: 0.5).repeatForever().speed(randomSpeed()).delay(randomDelay()), value: isAnimating)
                }
                .onAppear {
                    isAnimating = true
                }
            } //: ZStack
            .drawingGroup()
        }
    }
}

// MARK: - Preview
struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
