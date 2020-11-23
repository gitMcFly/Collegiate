//
//  CollegeGroup.swift
//  
//
//  Created by Christopher Weems on 11/20/20.
//

import Foundation
import MixedGroup
import PartialAddress
import Statehood
import unstandard

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

extension ForEach: CollegeGroup where Data.Element == College {
    public var body: Body {
        return .init(elements: Array(data))
    }
    
}


// MARK: - Property Setters

public extension CollegeGroup {
    func city(_ city: String) -> some CollegeGroup {
        AnyCollegeGroup(colleges: body[\.elements].map { $0.city(city) })
    }
    
    func state(_ state: State) -> some CollegeGroup {
        AnyCollegeGroup(colleges: body[\.elements].map { $0.state(state) })
    }
    
    func country(_ country: Country) -> some CollegeGroup {
        AnyCollegeGroup(colleges: body[\.elements].map { $0.country(country) })
    }
    
}

public extension CollegeGroup {
    func system<System>(_ system: System) -> some CollegeGroup where System : UniversitySystem {
        AnyCollegeGroup(colleges: body[\.elements].map { $0.system(system) })
    }
    
}
