//
//  Shape.swift
//  CS193p-2023
//
//  Created by Екатерина К on 30.11.2023.
//

import Foundation

enum Shape: CustomStringConvertible  {
    case diamond, oval, squiggle
    
    var description: String {
        switch self {
        case .diamond:
            return "Diamond"
        case .oval:
            return "Oval"
        case .squiggle:
            return "Squiggle"
        }
    }
}
