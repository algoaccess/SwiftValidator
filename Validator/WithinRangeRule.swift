//
//  WithinRangeRule.swift
//  Validator
//
//  Created by perwyl on 29/9/15.
//  Copyright © 2015 jpotts18. All rights reserved.
//

import Foundation

public class WithinRangeRule : Rule {
    
    private var message : String
    
    private var minRange: Int
    private var maxRange: Int
    
    
    public init(minRange: Int, maxRange: Int, message : String = "Please ensure value is within range "){
        self.message = message
        self.minRange = minRange
        self.maxRange = maxRange
    }
    
    public func validate(value: String) -> Bool {
        
        let textFieldValue = Int(value)
        
        return textFieldValue >= minRange && textFieldValue <= maxRange
    }
    
    public func errorMessage() -> String {
        return message
    }
}