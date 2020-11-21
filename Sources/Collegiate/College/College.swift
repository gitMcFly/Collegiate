//
//  College.swift
//  
//
//  Created by Christopher Weems on 11/19/20.
//

import Foundation
import MixedGroup
import Statehood

public struct College: ExpressibleByStringLiteral {
    public struct Properties {
        var title: String
        var state: State?
        
        var abbreviations: Set<String> = []
        
        var siteAuthority: String?
        internal var _siteAuthorityUsesHTTPS: Bool?
        
        var homePage: String?
        
    }
    
    private var properties: Properties
    
    public init(stringLiteral value: StringLiteralType) {
        self.properties = Properties(title: value)
        
    }
    
}

extension College {
    public subscript<V>(property keyPath: KeyPath<Properties, V>) -> V {
        properties[keyPath: keyPath]
    }
    
    internal subscript<V>(propertyKeyPath: WritableKeyPath<Properties, V>) -> V {
        get { properties[keyPath: propertyKeyPath] }
        set { properties[keyPath: propertyKeyPath] = newValue }
    }
    
}

public typealias CollegeGroupBuilder = MixedGroupBuilder<College>
