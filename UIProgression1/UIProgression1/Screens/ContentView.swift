//
//  ContentView.swift
//  UIProgression1
//
//  Created by apple on 20/03/23.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    // MARK: - Body
    
    var body: some View {
        if isOnboardingViewActive {
            OnboardingView()
        } else {
            HomeView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
