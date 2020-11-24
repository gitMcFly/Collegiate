//
//  PartialAddress.swift
//  
//
//  Created by Christopher Weems on 11/23/20.
//

import Foundation
import Resultto
import Statehood
import unstandard

public struct PartialAddress {
    public var country: Country?
    public var administrativeArea: AdministrativeArea?
    public var city: String?
    
    public init() { }
    
}

extension PartialAddress {
    @AllNil public var isEmpty: Bool {
        country
        administrativeArea
        city
        
    }
    
}

extension PartialAddress: CustomStringConvertible {
    public var description: String {
        Array {
            if let city = city {
                city
                
            }
            
            if let administrativeArea = administrativeArea?.formattedTitle,
               city?.contains(administrativeArea) != true {
                administrativeArea
                
            }
            
            if let country = country?.formattedTitle {
                country
                
            }
            
        }
        .joined(separator: ", ")
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
