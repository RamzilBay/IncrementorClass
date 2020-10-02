//
//  IncrementorClassTests.swift
//  IncrementorClassTests
//
//  Created by Ramzil Bayguskarov on 01.10.2020.
//  Copyright © 2020 Ramzil Bayguskarov. All rights reserved.
//

import XCTest
@testable import IncrementorClass

class IncrementorClassTests: XCTestCase {

    func testGetNumber() {
        
        let testValue1 = 0
        let testValue2 = Incrementor()
        let testValue3 = testValue2.getNumber()
        
        XCTAssertEqual(testValue1, testValue3)
        
    }

    func testIncrementNumber() {
        
        ///When
        
        let testValue1 = 1
        let testValue2 = Incrementor()
       
        ///Then
        
        testValue2.incrementNumber()
        let testValue3 = testValue2.getNumber()
        
        ///Have to be
        
        XCTAssertEqual(testValue1, testValue3)
        
    }
    
    func testSetMaxValue() {
        
        ///Changing value to 0 if max value less, testing
        
        ///When
        
        let testValue1 = 0
        let testValue2 = Incrementor()
        
        ///Then
        
        testValue2.setMaxValue(maxValue: 1)
        testValue2.incrementNumber()
        let testValue3 = testValue2.getNumber()
         
        ///Have to be
        
        XCTAssertEqual(testValue1, testValue3)
        
        ///Max value can't be negative testing
        
        ///When
        
        let testValue4 = -1
        let testValue5 = Incrementor()
        
        ///Then
        
        testValue5.setMaxValue(maxValue: testValue4)
         
        ///Have to be
        
        XCTAssert(true, "Please set max value > 0")
        
    }

}
