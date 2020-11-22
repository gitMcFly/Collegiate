//
//  AnyCollegeGroup.swift
//  
//
//  Created by Christopher Weems on 11/22/20.
//

import Foundation
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
    
}

public extension CollegeGroup {
    func eraseToAnyCollegeGroup() -> AnyCollegeGroup {
        .init(other: self)
    }
    
}
