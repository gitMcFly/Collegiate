//
//  String+Extensions.swift
//  
//
//  Created by Christopher Weems on 11/21/20.
//

import Algorithms
import Foundation
import unstandard

fileprivate let initialComponentsSeparators = CharacterSet.whitespaces.union(.hyphens)

extension String {
    internal var initials: String {
        self.components(separatedBy: initialComponentsSeparators)
            .flatMap { c -> [Substring] in
                guard !c.allSatisfy(\.isUppercase) else { return [Substring(c)] }
                return c.chunked(by: { $0.isUppercase || $1.isLowercase })
            }
            .compactMap { $0.first?.if(\.isUppercase) }
            .map(String.init)
            .joined()
    }
    
}
