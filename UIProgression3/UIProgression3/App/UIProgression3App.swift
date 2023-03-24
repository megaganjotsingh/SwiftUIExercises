//
//  UIProgression3App.swift
//  UIProgression3
//
//  Created by apple on 23/03/23.
//

import SwiftUI

@main
struct UIProgression3App: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                FruitListView()
            }
        }
    }
}
