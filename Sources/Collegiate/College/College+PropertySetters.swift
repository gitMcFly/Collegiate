//
//  College+PropertySetters.swift
//  
//
//  Created by Christopher Weems on 11/20/20.
//

import Foundation
import Statehood

extension College {
    func url(authority: String, useHTTPS: Bool = true) -> Self {
        var new = self
        new[\.siteAuthority] = authority
        return new
    }
    
    func url(_ homepageURLString: String) -> Self {
        assert(homepageURLString.hasPrefix("http"))
        var new = self
        new[\.homePage] = homepageURLString
        return new
    }
    
}

extension String {
    func url(authority: String, useHTTPS: Bool = true) -> College {
        self.as(College.self)
            .url(authority: authority, useHTTPS: useHTTPS)
    }
    
    func url(_ homepageURLString: String) -> College {
        self.as(College.self)
            .url(homepageURLString)
    }
    
}

