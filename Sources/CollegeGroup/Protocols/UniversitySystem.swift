//
//  UniversitySystem.swift
//  
//
//  Created by Christopher Weems on 11/22/20.
//

import Foundation
import unstandard

public protocol UniversitySystem: Identifiable {
    @UUIDResult var id: UUID { get }
    
}
