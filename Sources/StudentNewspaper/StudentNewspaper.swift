//
//  StudentNewspaper.swift
//  
//
//  Created by Christopher Weems on 11/29/20.
//

import unstandard

public enum StudentNewspaper: CaseIterable {
    case dailyBeacon
    case dailyTexan
    case msuExponent
    case triangle
    
}

public extension StudentNewspaper {
    @SingleResult var siteReference: SiteReference? {
        switch self {
        case .dailyBeacon: .authority("utdailybeacon.com")
        case .dailyTexan: .authority("dailytexanonline.com")
        case .msuExponent: .authority("msuexponent.com")
        case .triangle: .authority("thetriangle.org")
        }
    }
    
}
