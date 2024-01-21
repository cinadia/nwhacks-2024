//
//  Feed.swift
//  nwhacks-2024
//
//  Created by Cindy Cui on 2024-01-20.
//

import SwiftUI

struct FeedButtonStyle: ButtonStyle {
    @EnvironmentObject var pet: Pet
    func makeBody(configuration: Configuration) -> some View {
     
        configuration.label
            .frame(width: 40, height: 40)
            .background(pet.buttonColor)
            .foregroundStyle(.white)
            .clipShape(Circle())
            .padding()
            
    }
}
