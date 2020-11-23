//
//  AnyCollegeGroup.swift
//  
//
//  Created by Christopher Weems on 11/22/20.
//

import Foundation
import MixedGroup
import unstandard

public struct AnyCollegeGroup: CollegeGroup {
    @Memoized public var body: Body
    
    init(@CollegeGroupBuilder _ builder: @escaping () -> CollegeGroup) {
        _body = Memoized { builder().body }
    }
    
    public init<CG: CollegeGroup>(other: CG) {
        if let any = other as? AnyCollegeGroup {
            self = any
            
        } else {
            _body = Memoized { other.body }
            
        }
    }
    
    public init(colleges: [College]) {
        _body = Memoized(wrappedValue: MixedGroup(elements: colleges))
        
    }
    
}

public extension CollegeGroup {
    func eraseToAnyCollegeGroup() -> AnyCollegeGroup {
        .init(other: self)
    }
    
}
