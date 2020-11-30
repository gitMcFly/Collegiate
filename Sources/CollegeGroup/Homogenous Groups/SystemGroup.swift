//
//  SystemGroup.swift
//  
//
//  Created by Christopher Weems on 11/29/20.
//

import Foundation
import unstandard

public struct SystemGroup<System: UniversitySystem>: CollegeGroup {
    fileprivate let wrapped: HomogenousPropertyGroup
    
    public var body: AnyCollegeGroup.Body { wrapped.body }
    
    public init(_ system: System, @CollegeGroupBuilder _ builder: @escaping () -> CollegeGroup) {
        let system = AnyUniversitySystem(other: system)
        wrapped = HomogenousPropertyGroup(\.system, value: system, builder)
        
    }
    
}
