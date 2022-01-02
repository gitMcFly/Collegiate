//
//  Country.swift
//  
//
//  Created by Christopher Weems on 11/23/20.
//

import Algorithms
import Foundation
import unstandard

public enum Country {
    case australia
    case malaysia
    case unitedStatesOfAmerica
    
}

extension Country {
    internal var formattedTitle: String {
        "\(self)".chunked { $0.isUppercase || $1.isLowercase }
            .map(\.capitalized)
            .replacingOccurrences(of: "Of", with: "of")
            .joined(separator: " ")
    }
    
}
