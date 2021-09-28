//
//  DebuggingTests.swift
//  DebuggingTests
//
//  Created by lee bennett on 9/27/21.
//

import XCTest

class CalculatorTests: XCTestCase {

    var calculator: Calculator!
    
    override func setUp() {
        self.calculator = Calculator()
        // initialize your objects
    }
    
    override func tearDown() {
        // after each test is execute
        // clean the database, clear the cache
    }
    
    func testAdd()  {
        // 1. Setting the context (done in setup)
        
        // 2. Performing the action
        let result = calculator.add(x: 20, y: 40)
        
        // 3. Assertion -> Verifying the expect result matches the actual result
        XCTAssertEqual(result, 60)
        XCTAssert
        
    }
    
    func testSubtract()  {
        // 1. Setting the context (done in setup)
        
        // 2. Performing the action
        let result = calculator.subtract(x: 20, y: 40)
        
        // 3. Assertion -> Verifying the expect result matches the actual result
        XCTAssertEqual(result, -20)
        
    }


}
