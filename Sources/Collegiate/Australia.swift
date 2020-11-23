//
//  Australia.swift
//  
//
//  Created by Christopher Weems on 11/23/20.
//

import CollegeGroup
import Foundation
import unstandard

public struct Australia: CollegeGroup {
    public var body: Body {
        "University of Melbourne"
            .city("Melbourne")
            .url(authority: "unimelb.edu.au")
        
        "University of New South Wales"
            .city("Kensington")
            .url(authority: "unsw.edu.au")
        
        "University of Queensland"
            .city("Brisbane")
            .url(authority: "uq.edu.au")
        
        "The University of Western Australia"
            .abbreviation("UWA", "TUWA")
            .city("Perth")
            .url(authority: "uwa.edu.au")
        
    }
    
    public init() { }
    
}
