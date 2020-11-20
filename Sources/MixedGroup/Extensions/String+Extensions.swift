//
//  String+Extensions.swift
//  
//
//  Created by Christopher Weems on 11/20/20.
//

import Foundation

public extension String {
    func `as`<Result>(_ type: Result.Type) -> Result where Result : ExpressibleByStringLiteral,
                                                           Self == Result.StringLiteralType {
        type.init(stringLiteral: self)
    }
    
}
