//
//  Item.swift
//  SwiftData
//
//  Created by Baha Ok on 18.07.2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
