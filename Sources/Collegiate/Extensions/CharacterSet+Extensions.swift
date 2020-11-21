//
//  CharacterSet+Extensions.swift
//  
//
//  Created by Christopher Weems on 11/21/20.
//

import Foundation

internal extension CharacterSet {
    var hyphens: CharacterSet {
        .init(charactersIn: "-­᠆‐‑⁃")
    }
    
}
