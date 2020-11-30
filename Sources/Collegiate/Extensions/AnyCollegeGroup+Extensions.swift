//
//  AnyCollegeGroup.swift
//  
//
//  Created by Christopher Weems on 11/29/20.
//

import CollegeGroup
import unstandard

extension AnyCollegeGroup: CaseIterable {
    @ArrayBuilder public static var allCases: [Self] {
        Australia()
        Malaysia()
        UnitedStates()
        
    }
    
}

fileprivate extension ArrayBuilder {
    static func buildExpression<CG: CollegeGroup>(_ collegeGroup: CG) -> [AnyCollegeGroup] {
        [collegeGroup.eraseToAnyCollegeGroup()]
    }
    
}
