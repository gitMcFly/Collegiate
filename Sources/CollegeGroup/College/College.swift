//
//  College.swift
//  
//
//  Created by Christopher Weems on 11/19/20.
//

import Foundation
import MixedGroup
import PartialAddress
import Statehood

public struct College: ExpressibleByStringLiteral {
    public struct Properties {
        public var title: String
        public var commonTitle: String?
        
        public var address = PartialAddress()
        
        public var system: AnyUniversitySystem?
        
        public var abbreviations: [String] = []
        
        public var siteAuthority: String?
        internal var _siteAuthorityUsesHTTPS: Bool?
        
        public var homePage: String?
        
    }
    
    private var properties: Properties
    
    public init(stringLiteral value: StringLiteralType) {
        let (title, city) = Self.title(from: value)
        self.properties = Properties(title: title)
        
        if let city = city {
            self.properties.address.city = city
            
        }
        
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


// MARK: -

fileprivate extension College {
    static let citySeparators = [", ", " at ", " in "]
    
    static func title(from stringValue: String) -> (title: String, city: String?) {
        guard let citySeparator = citySeparators.first(where: stringValue.contains) else {
            return (stringValue, nil)
        }
        
        let components = stringValue.split(separator: citySeparator)
        
        switch components.count {
        case 2:
            return (stringValue, components[1])
            
        default:
            return (stringValue, nil)
        }
    }
    
}


// MARK: - College.updating(_:)

internal extension College {
    func updating<V>(_ keyPath: WritableKeyPath<College.Properties, V>, to value: V) -> Self {
        var new = self
        new[keyPath] = value
        return new
    }
    
}
