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
    
    private var minRange: Float
    private var maxRange: Float
    
    
    public init(minRange: Float, maxRange: Float, message : String = "Value out of range "){
        self.message = message
        self.minRange = minRange
        self.maxRange = maxRange
    }
    
    public func validate(value: String) -> Bool {
        
        let textFieldValue = (value as NSString).floatValue
        
        return textFieldValue >= minRange && textFieldValue <= maxRange
    }
    
    public func errorMessage() -> String {
        return message
    }

}