//
//  UniversitySystem.swift
//  
//
//  Created by Christopher Weems on 11/22/20.
//

import Foundation
import unstandard

public protocol UniversitySystem: Identifiable {
    var title: String { get }
    @UUIDResult var id: UUID { get }
    
}
