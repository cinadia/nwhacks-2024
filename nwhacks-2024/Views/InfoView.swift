//
//  InfoView.swift
//  nwhacks-2024
//
//  Created by Cindy Cui on 2024-01-21.
//

import SwiftUI

struct InfoView: View {
    @Environment(Pet.self) var pet
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                Text("Information")
                    .customTitleFont()
                
                Text("More about Dopamenus")
                    .customFont()
                    .padding()
                Text("The dopamenu (dopamine menu), created by Eric Tivers, is a list of activities that bring you joy and make you feel good. When you need a break, or feel the familiar need to scroll mindlessly on your phone, you can instead look at your personalized dopamine menu and choose something to do from your items.")
                    .customSmallFont()
                
                Text("More about Tamagotchi")
                    .customFont()
                    .padding()
                Text("A Tamagotchi is a virtual pet simulation toy. It originated in Japan in the 1990s by Bandai. The device is a small, egg-shaped electronic gadget with a digital screen. Users are responsible for caring for a virtual creature, which starts as an egg and eventually grows into various forms depending on how well it is nurtured. Users must feed, play with, and attend to the needs of their Tamagotchi to ensure its well-being.")
                    .customSmallFont()
                
                Text("About")
                    .customFont()
                    .padding(5)
                Text("By Alison Co and Cindy Cui. nwHacks 2024.")
                    .customSmallFont()
            }
            .frame(width: 300, height: 800)
            .containerRelativeFrame([.horizontal, .vertical])
            .background(pet.backgroundColor)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Dismiss") {
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    InfoView()
}
