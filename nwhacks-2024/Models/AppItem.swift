//
//  AppsItem.swift
//  nwhacks-2024
//
//  Created by Cindy Cui on 2024-01-20.
//

import Foundation
import SwiftData
import SwiftUI

@Model
final class AppItem: Identifiable {
    var id = UUID()
    var desc: String?

    init(description: String?) {
        self.desc = description
    }
}

extension AppItem: DescribableItem {}
