//
//  College+PropertySetters.swift
//  
//
//  Created by Christopher Weems on 11/20/20.
//

import Foundation
import PartialAddress
import Statehood

// MARK: - `.url(_:)`

public extension College {
    func url(authority: String, useHTTPS: Bool = true) -> Self {
        var new = self
        new[\.siteAuthority] = authority
        return new
    }
    
    func url(_ pageURL: String) -> Self {
        assert(pageURL.hasPrefix("http"))
        var new = self
        new[\.homePage] = pageURL
        return new
    }
    
}


public extension String {
    func url(authority: String, useHTTPS: Bool = true) -> College {
        self.as(College.self)
            .url(authority: authority, useHTTPS: useHTTPS)
    }
    
    func url(_ homepageURLString: String) -> College {
        self.as(College.self)
            .url(homepageURLString)
    }
    
}

// MARK: - `.city(_:)`

public extension College {
    func city(_ city: String) -> Self {
        var new = self
        new[\.address.city] = city
        return new
    }
    
}

public extension String {
    func city(_ city: String) -> College {
        self.as(College.self)
            .city(city)
    }
    
}


// MARK: - `.state(_:)`

public extension College {
    func state(_ state: State) -> Self {
        var new = self
        new[\.address.state] = state
        return new
    }
    
}


// MARK: - `.country(_:)`

public extension College {
    func country(_ country: Country) -> Self {
        var new = self
        new[\.address.country] = country
        return new
    }
    
}


// MARK: - `.abbreviation(_:)`

public extension College {
    fileprivate func _abbreviation<C>(_ abbreviations: C) -> Self where C: Collection, C.Element == String {
        var new = self
        new[\.abbreviations].append(contentsOf: abbreviations)
        return new
    }
    
    func abbreviation(_ abbreviations: String...) -> Self {
        _abbreviation(abbreviations)
    }
    
}

public extension String {
    func abbreviation(_ abbreviations: String...) -> College {
        self.as(College.self)
            ._abbreviation(abbreviations)
    }
    
}


// MARK: - `.commonTitle(_:)`

public extension College {
    func commonTitle(_ title: String) -> Self {
        var new = self
        new[\.commonTitle] = title
        return new
    }
    
}

public extension String {
    func commonTitle(_ title: String) -> College {
        self.as(College.self)
            .commonTitle(title)
    }
    
}


// MARK: - `.system(_:)`

public extension College {
    func system<System>(_ system: System) -> Self where System : UniversitySystem {
        var new = self
        new[\.system] = AnyUniversitySystem(other: system)
        return new
    }
    
}
