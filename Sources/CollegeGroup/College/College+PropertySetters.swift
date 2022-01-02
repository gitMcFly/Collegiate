//
//  College+PropertySetters.swift
//  
//
//  Created by Christopher Weems on 11/20/20.
//

import Foundation
import PartialAddress
import Statehood
import StudentNewspaper

///: `.url(_:)`

extension College {
    public func url(authority: String, useHTTPS: Bool = true) -> Self {
        var new = self
        new[\.siteAuthority] = authority
        return new
    }
    
    public func url(_ pageURL: String) -> Self {
        assert(pageURL.hasPrefix("http"))
        var new = self
        new[\.homePage] = pageURL
        return new
    }
    
}


extension String {
    public func url(authority: String, useHTTPS: Bool = true) -> College {
        self.as(College.self)
            .url(authority: authority, useHTTPS: useHTTPS)
    }
    
    public func url(_ homepageURLString: String) -> College {
        self.as(College.self)
            .url(homepageURLString)
    }
    
}

///: `.city(_:)`

extension College {
    public func city(_ city: String, neighborhood: String? = nil) -> Self {
        var new = self
        
        new[\.address.city] = city
        
        if let neighborhood = neighborhood {
            new[\.address.neighborhood] = neighborhood
            
        }
        
        return new
    }
    
}

extension String {
    public func city(_ city: String, neighborhood: String? = nil) -> College {
        self.as(College.self)
            .city(city, neighborhood: neighborhood)
    }
    
}


///: `.state(_:)`

extension College {
    public func state(_ state: State) -> Self {
        var new = self
        new[\.address.state] = state
        return new
    }
    
}


///: `.country(_:)`

extension College {
    public func country(_ country: Country) -> Self {
        var new = self
        new[\.address.country] = country
        return new
    }
    
}


///: `.abbreviation(_:)`

extension College {
    fileprivate func _abbreviation<C>(_ abbreviations: C) -> Self where C: Collection, C.Element == String {
        var new = self
        new[\.abbreviations].append(contentsOf: abbreviations)
        return new
    }
    
    public func abbreviation(_ abbreviations: String...) -> Self {
        _abbreviation(abbreviations)
    }
    
}

extension String {
    public func abbreviation(_ abbreviations: String...) -> College {
        self.as(College.self)
            ._abbreviation(abbreviations)
    }
    
}


///: `.commonTitle(_:)`

extension College {
    public func commonTitle(_ title: String) -> Self {
        var new = self
        new[\.commonTitle] = title
        return new
    }
    
}

extension String {
    public func commonTitle(_ title: String) -> College {
        self.as(College.self)
            .commonTitle(title)
    }
    
}


///: `.system(_:)`

extension College {
    public func system<System>(_ system: System) -> Self where System : UniversitySystem {
        var new = self
        new[\.system] = AnyUniversitySystem(other: system)
        return new
    }
    
}


///: `.newspaper(_:)`

extension College {
    public func newspaper(_ newspapers: StudentNewspaper...) -> Self {
        _newspapers(newspapers)
    }
    
    fileprivate func _newspapers(_ newspapers: [StudentNewspaper]) -> Self {
        var new = self
        new[\.newspapers].append(contentsOf: newspapers)
        return new
    }
    
}

extension String {
    public func newspaper(_ newspapers: StudentNewspaper...) -> College {
        self.as(College.self)
            ._newspapers(newspapers)
    }
    
}
