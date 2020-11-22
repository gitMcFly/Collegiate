//
//  CollegeGroup.swift
//  
//
//  Created by Christopher Weems on 11/19/20.
//

import Foundation

public struct MixedGroup<Element> {
    private var nodes: [Node]
    
    public init(elements: [Element]) {
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
    struct SubscriptKeys {
        public var elements: [Element]
        
    }
    
    subscript<V>(keyPath: KeyPath<SubscriptKeys, V>) -> [Element] {
        switch keyPath {
        case \SubscriptKeys.elements:
            return nodes.flatMap(\.elements)
            
        default:
            fatalError()
        }
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
        case element(_ element: Element)
        case subgroup(_ group: MixedGroup)
        
    }
    
}

private extension MixedGroup.Node {
    var elements: [Element] {
        switch self {
        case .element(let element):
            return [element]
            
        case .subgroup(let subgroup):
            return subgroup.nodes.flatMap(\.elements)
            
        }
    }
    
}
