//
//  String+Extensions.swift
//  
//
//  Created by Christopher Weems on 11/21/20.
//

import Foundation

internal extension String {
    var initials: String {
        self.components(separatedBy: .whitespaces)
            .compactMap { $0.first?.if(\.isUppercase) }
            .map(String.init)
            .joined()
    }
    
}
