//
//  PartialAddress.swift
//  
//
//  Created by Christopher Weems on 11/23/20.
//

import Foundation
import Statehood

public struct PartialAddress {
    public var country: Country?
    public var administrativeArea: AdministrativeArea?
    public var city: String?
    
    public init() { }
    
}

extension PartialAddress {
    public enum AdministrativeArea {
        case state(_ state: State)
        
    }
    
}

extension PartialAddress.AdministrativeArea {
    public var state: State? {
        switch self {
        case .state(let state):
            return state
        }
    }
    
}

extension PartialAddress {
    public var state: State? {
        get { administrativeArea?.state }
        set {
            if let newValue = newValue {
                administrativeArea = .state(newValue)
                
            } else {
                administrativeArea = nil
                
            }
        }
    }
    
}
