//
//  OnboardingView.swift
//  RickAndMortyUniversity
//
//  Created by Javier Torné Hernández on 9/11/23.
//

import SwiftUI

struct OnboardingView: View {
    let title: String
    let systemImageName: String
    let description: String
    
    let skipTapped: () -> Void
    
    var body: some View {
        VStack(spacing: 32) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
            
            Image(systemName: systemImageName)
                .font(.largeTitle)
                .foregroundStyle(.blue)
            
            Text(description)
            
            Button("onboarding.skip".localized()) {
                skipTapped()
            }
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    OnboardingView(
        title: "onboarding.episodes.title".localized(),
        systemImageName: "sparkles.tv.fill",
        description: "onboarding.episodes.description".localized(),
        skipTapped: {}
    )
}
