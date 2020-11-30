//
//  HomogeneousPropertyGroup.swift
//  
//
//  Created by Christopher Weems on 11/29/20.
//

import Foundation
import unstandard

public struct HomogenousPropertyGroup: CollegeGroup {
    @Memoized public var body: AnyCollegeGroup.Body
    
    public init<V>(_ keyPath: WritableKeyPath<College.Properties, V>,
                   value: V, @CollegeGroupBuilder _ builder: @escaping () -> CollegeGroup) {
        _body = Memoized {
            builder().body[\.elements]
                .map { $0.updating(keyPath, to: value) }
                .wrap { AnyCollegeGroup(colleges: $0).body }
        }
        
    }
    
}
