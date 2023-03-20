//
//  HomeView.swift
//  UIProgression1
//
//  Created by apple on 20/03/23.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - Properties
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    @State private var isAnimating: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.2)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .offset(y: isAnimating ? 35 : -35)
                    .animation(
                        .easeInOut(duration: 4)
                        .repeatForever(), value: isAnimating
                    )
            }
            
            Text("The time that leeds to mastery is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            Button(action: {
                isOnboardingViewActive = true
            }, label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            })
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            .padding()
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now()+2, execute: {
                isAnimating = true
            })
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
