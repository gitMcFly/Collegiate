//
//  AnyUniversitySystem.swift
//  
//
//  Created by Christopher Weems on 11/22/20.
//

import Foundation

public struct AnyUniversitySystem: UniversitySystem {
    public let title: String
    public let id: UUID
    
    init<Other>(other: Other) where Other: UniversitySystem {
        title = other.title
        id = other.id
        
    }
    
}
