//
//  CityGroup.swift
//  
//
//  Created by Christopher Weems on 11/29/20.
//

import Foundation
import unstandard

public struct CityGroup: CollegeGroup {
    fileprivate let wrapped: HomogenousPropertyGroup
    public var body: AnyCollegeGroup.Body { wrapped.body }
    
    public init(_ state: String, @CollegeGroupBuilder _ builder: @escaping () -> CollegeGroup) {
        wrapped = HomogenousPropertyGroup(\.address.city, value: state, builder)
        
    }
    
}
