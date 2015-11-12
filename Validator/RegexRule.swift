//
//  RegexRule.swift
//  Validator
//
//  Created by Jeff Potter on 4/3/15.
//  Copyright (c) 2015 jpotts18. All rights reserved.
//

import Foundation

public class RegexRule : Rule {
    
    private var REGEX: String = "^(?=.*?[A-Z]).{8,}$"
    private var message : String
    
    public init(regex: String, message: String = "Invalid Regular Expression"){
        self.REGEX = regex
        self.message = message
    }
    
    public func validate(value: String) -> Bool {
        
        let thisValue = value as NSString
        let newValue = thisValue.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
        
        let test = NSPredicate(format: "SELF MATCHES %@", self.REGEX)
        return test.evaluateWithObject(newValue)
    }
    
    public func errorMessage() -> String {
        return message
    }
}
