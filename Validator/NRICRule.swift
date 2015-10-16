//
//  NRICRule.swift
//  Validator
//
//  Created by perwyl on 16/10/15.
//  Copyright © 2015 jpotts18. All rights reserved.
//

import Foundation

public class NRICRule: RegexRule {
    
    public convenience init(message : String = "Enter a valid NRIC"){
        self.init(regex: "([A-Z]{1})\\d{7}([A-Z]{1})", message : message)
    }
}