//
//  UniversitySystem.swift
//  
//
//  Created by Christopher Weems on 11/22/20.
//

import Algorithms
import Foundation
import unstandard

public protocol UniversitySystem: Identifiable {
    var title: String { get }
    @UUIDResult var id: UUID { get }
    
}

extension UniversitySystem {
    public var title: String {
        "\(self)"
            .chunked { $0.isUppercase || $1.isLowercase }
            .map(\.capitalized)
            .replacingOccurrences(of: "Of", with: "of")
            .joined(separator: " ")
    }
    
}
