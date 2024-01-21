//
//  SidesButton.swift
//  nwhacks-2024
//
//  Created by Cindy Cui on 2024-01-20.
//

import SwiftUI

struct SidesButton: View {
    let icon: Image
    @State private var showingSheet = false
    let sheetView = SidesView()
    
    var body: some View {
        Button {
            showingSheet.toggle()
        } label: {
            icon
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 60)
                .background(Circle()
                    .fill(Color("ButtonColor"))
                    .frame(width: 90, height: 90)
                )
                .padding()
        }
        .sheet(isPresented: $showingSheet) {
            sheetView
        }
    }
}

#Preview {
    SidesButton(icon: Image("cat"))
}

