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
        public var title: String
        public var commonTitle: String?
        
        public var city: String?
        public var state: State?
        
        public var system: AnyUniversitySystem?
        
        public var abbreviations: [String] = []
        
        public var siteAuthority: String?
        internal var _siteAuthorityUsesHTTPS: Bool?
        
        public var homePage: String?
        
    }
    
    private var properties: Properties
    
    public init(stringLiteral value: StringLiteralType) {
        self.properties = Properties(title: value)
        
    }
    
}

extension College {
    public subscript<V>(propertyKeyPath: KeyPath<Properties, V>) -> V {
        properties[keyPath: propertyKeyPath]
    }
    
    internal subscript<V>(propertyKeyPath: WritableKeyPath<Properties, V>) -> V {
        get { properties[keyPath: propertyKeyPath] }
        set { properties[keyPath: propertyKeyPath] = newValue }
    }
    
}

public typealias CollegeGroupBuilder = MixedGroupBuilder<College>


// MARK: -

public extension College.Properties {
    var primaryAbbreviation: String? {
        abbreviations.first ?? title.initials
    }
    
}
