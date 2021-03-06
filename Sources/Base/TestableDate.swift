//
//  TestableDate.swift
//  Base
//
//  Created by Wain on 29/11/2017.
//  Copyright © 2017 Nice Agency. All rights reserved.
//

import Foundation

public let BaseTestableDate_Environment_key = "TEST_REFERENCE_DATE"
public let BaseTestableDate_Environment_format = "yyyy-MM-dd'T'HH:mm:ss"

public struct TestableDate {
    public static var testReferenceDate: Date?
    
    public static func now() -> Date {
        guard let testDate = testReferenceDate else {
            return Date()
        }
        
        return testDate
    }
}
