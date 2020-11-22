//
//  CollegeGroup.swift
//  
//
//  Created by Christopher Weems on 11/20/20.
//

import Foundation
import MixedGroup

public protocol CollegeGroup {
    typealias Body = Group
    typealias Group = MixedGroup<College>
    
    @CollegeGroupBuilder var body: Body { get }
    
}

extension MixedGroup: CollegeGroup where Element == College {
    public var body: Self {
        return self
    }
    
}
