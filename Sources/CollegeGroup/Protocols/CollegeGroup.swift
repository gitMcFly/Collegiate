//
//  CollegeGroup.swift
//  
//
//  Created by Christopher Weems on 11/20/20.
//

import Foundation
import MixedGroup
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
    func state(_ state: State) -> some CollegeGroup {
        AnyCollegeGroup {
            ForEach(body[\.elements]) { college in
                college.state(state)
                
            }
        }
    }
    
}


// MARK: -

fileprivate struct AnyCollegeGroup: CollegeGroup {
    @Memoized var body: Body
    
    init(@CollegeGroupBuilder _ builder: @escaping () -> CollegeGroup) {
        _body = Memoized { builder().body }
    }
    
    init<CG: CollegeGroup>(other: CG) {
        _body = Memoized { other.body }
    }
    
}
