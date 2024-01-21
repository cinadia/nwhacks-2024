//
//  SpecialsButton.swift
//  nwhacks-2024
//
//  Created by Cindy Cui on 2024-01-20.
//

import SwiftUI

struct SpecialsButton: View {
    @EnvironmentObject var pet: Pet
    let icon: Image
    @State private var showingSheet = false
    let sheetView = SpecialsView()
    
    var body: some View {
        Button {
            showingSheet.toggle()
        } label: {
            icon
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .background(Circle()
                    .fill(pet.buttonColor)
                    .frame(width: 90, height: 90)
                )
                .padding()
        }
        .sheet(isPresented: $showingSheet) {
            sheetView
                .environment(\.showingSheet, self.$showingSheet)
        }
    }
}

#Preview {
    SpecialsButton(icon: Image("cat"))
}
