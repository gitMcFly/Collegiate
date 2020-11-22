//
//  MixedGroupBuilder.swift
//  
//
//  Created by Christopher Weems on 11/21/20.
//

import MixedGroup

extension MixedGroupBuilder {
    public static func buildExpression<CG: CollegeGroup>(_ collegeGroup: CG) -> MixedGroup<College> {
        collegeGroup.body
    }
    
}
