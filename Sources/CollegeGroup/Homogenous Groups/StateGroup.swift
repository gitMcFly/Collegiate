//
//  StateGroup.swift
//  
//
//  Created by Christopher Weems on 11/29/20.
//

import Foundation
import Statehood
import unstandard

public struct StateGroup: CollegeGroup {
    fileprivate let wrapped: HomogenousPropertyGroup
    public var body: AnyCollegeGroup.Body { wrapped.body }
    
    public init(_ state: State, @CollegeGroupBuilder _ builder: @escaping () -> CollegeGroup) {
        wrapped = HomogenousPropertyGroup(\.address.state, value: state, builder)
        
    }
    
}
