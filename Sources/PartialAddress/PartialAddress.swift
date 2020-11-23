//
//  PartialAddress.swift
//  
//
//  Created by Christopher Weems on 11/23/20.
//

import Foundation
import Statehood
import unstandard

public struct PartialAddress {
    public var country: Country?
    public var administrativeArea: AdministrativeArea?
    public var city: String?
    
    public init() { }
    
}

extension PartialAddress: CustomStringConvertible {
    public var description: String {
        Array<String?> {
            city
            administrativeArea?.formattedTitle
            country?.formattedTitle
        }
        .compactMap { $0 }
        .joined(separator: ", ")
    }
    
}


// MARK: -

extension PartialAddress {
    public enum AdministrativeArea {
        case state(_ state: State)
        
    }
    
}

extension PartialAddress.AdministrativeArea {
    var formattedTitle: String {
        switch self {
        case .state(let state):
            return state.fullName
            
        }
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
