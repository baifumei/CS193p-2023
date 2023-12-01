//
//  Shading.swift
//  CS193p-2023
//
//  Created by Екатерина К on 30.11.2023.
//

import Foundation

enum Shading: CustomStringConvertible {
    case solid, striped, stroked
    
    var description: String {
        switch self {
        case .solid:
            return "Solid"
        case .striped:
            return "Striped"
        case .stroked:
            return "Stroked"
        }
    }
}
