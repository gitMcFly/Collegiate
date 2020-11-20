//
//  CollegeGroup.swift
//  
//
//  Created by Christopher Weems on 11/19/20.
//

import Foundation

public struct MixedGroup<Element> {
    private var nodes: [Node]
    
    internal init(elements: [Element]) {
        nodes = elements.map { Node.element($0) }
        
    }
    
    internal init(subgroups: [MixedGroup]) {
        nodes = subgroups.map { Node.subgroup($0) }
        
    }
    
    internal init() {
        nodes = []
        
    }
    
}

public extension MixedGroup {
    init(@MixedGroupBuilder<Element> _ builder: () -> MixedGroup) {
        self = builder()
    }
    
}


// MARK: - Node (internal)

private extension MixedGroup {
    enum Node {
        case element(_ college: Element)
        case subgroup(_ group: MixedGroup)
        
    }
    
}
