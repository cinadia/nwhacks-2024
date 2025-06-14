//
//  SaveButtonStyle.swift
//  nwhacks-2024
//
//  Created by Alison Co on 2024-01-21.
//

import SwiftUI

struct SaveButtonNewStyle: ButtonStyle {
    @Environment(Pet.self) var pet
    
    func makeBody(configuration: Configuration) -> some View {

        configuration.label
            .frame(width: 80, height: 80)
            .background(pet.buttonColor)
            .foregroundStyle(.black)
            .clipShape(Circle())
            .padding()

    }
}
