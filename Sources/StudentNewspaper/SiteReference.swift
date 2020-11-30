//
//  SiteReference.swift
//  
//
//  Created by Christopher Weems on 11/29/20.
//

public enum SiteReference {
    case authority(_ authority: String, useHTTPS: Bool = true)
    case webPage(_ url: String)
    
}
