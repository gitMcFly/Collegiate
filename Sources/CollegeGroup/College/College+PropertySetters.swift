//
//  College+PropertySetters.swift
//  
//
//  Created by Christopher Weems on 11/20/20.
//

import Foundation
import Statehood

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

public extension College {
    func state(_ state: State) -> Self {
        var new = self
        new[\.state] = state
        return new
    }
    
}

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
