//
//  AdministrativeArea.swift
//  
//
//  Created by Christopher Weems on 11/23/20.
//

import Foundation
import Statehood

public enum AdministrativeArea {
    case state(_ state: State)
    
}

extension AdministrativeArea {
    internal var formattedTitle: String {
        switch self {
        case .state(let state):
            return state.fullName
            
        }
    }
    
}

extension AdministrativeArea {
    public var state: State? {
        switch self {
        case .state(let state):
            return state
        }
    }
    
}
