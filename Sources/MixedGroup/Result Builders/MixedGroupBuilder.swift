//
//  MixedGroupBuilder.swift
//  
//
//  Created by Christopher Weems on 11/19/20.
//

import Foundation

@_functionBuilder
public struct MixedGroupBuilder<Element> {
    public static func buildBlock(_ subgroups: MixedGroup<Element>...) -> MixedGroup<Element> {
        .init(subgroups: subgroups)
    }
    
    public static func buildBlock() -> MixedGroup<Element> {
        .init()
    }
    
}

public extension MixedGroupBuilder {
    static func buildExpression(_ element: Element) -> MixedGroup<Element> {
        .init(elements: [element])
    }
    
    static func buildExpression(_ subgroup: MixedGroup<Element>) -> MixedGroup<Element> {
        subgroup
    }
    
}

public extension MixedGroupBuilder where Element : ExpressibleByStringLiteral {
    static func buildExpression(_ elementStringLiteral: Element.StringLiteralType) -> MixedGroup<Element> {
        .init(elements: [.init(stringLiteral: elementStringLiteral)])
    }
    
}
