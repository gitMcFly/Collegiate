//
//  String+Extensions.swift
//  
//
//  Created by Christopher Weems on 11/21/20.
//

import Foundation
import unstandard

fileprivate let initialComponentsSeparators = CharacterSet.whitespaces.union(.hyphens)

internal extension String {
    var initials: String {
        self.components(separatedBy: initialComponentsSeparators)
            .compactMap { $0.first?.if(\.isUppercase) }
            .map(String.init)
            .joined()
    }
    
}
