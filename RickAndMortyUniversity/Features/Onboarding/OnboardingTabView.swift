//
//  OnboardingTabView.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 9/11/23.
//

import SwiftUI

struct OnboardingTabView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        TabView {
            OnboardingView(
                title: "onboarding.episodes.title".localized(),
                systemImageName: "sparkles.tv.fill",
                description: "onboarding.episodes.description".localized(),
                skipTapped: {
                    dismiss()
                }
            )
            
            OnboardingView(
                title: "onboarding.characters.title".localized(),
                systemImageName: "person.2.fill",
                description: "onboarding.characters.description".localized(), 
                skipTapped: {
                    dismiss()
                }
            )
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    OnboardingTabView()
}
