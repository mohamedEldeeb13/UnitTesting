//
//  MathFunctionsTests.swift
//  UnitTestingTests
//
//  Created by Mohamed Abd Elhakam on 04/03/2024.
//

import XCTest
@testable import UnitTesting

final class MathFunctionsTests: XCTestCase {
    
    var sut : MathFunctions!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = MathFunctions()
    }
    
    func testAdd(){
        // given - arrang
        var result : Int = 0
        // when - Act
         result = sut.add(firstNum: 5, secondNum: 4)
        // then - Assert
        XCTAssert(result == 9)
//        XCTAssertEqual(result, 9)
    }
    
    func testSubtract(){
        // given - arrang
        var result : Int = 0
        // when - Act
         result = sut.subtract(firstNum: 5, secondNum: 4)
        // then - Assert
        XCTAssert(result == 1)
       
//        XCTAssertEqual(result, 2)
    }

    func testMultiply(){
        // given - arrang
        var result : Int = 0
        // when - Act
         result = sut.multiply(firstNum: 5, secondNum: 4)
        // then - Assert
        XCTAssert(result == 20)
       
//        XCTAssertEqual(result, 20)
    }
    
    func testCheckedDivisionResult(){
        // given - arrang
        var result : Bool = false
        // when - Act
         result = sut.checkedDivisionResult(firstNum: 10, secondNum: 2, checkedResult: 5)
        // then - Assert
        XCTAssertTrue(result)
        
        // second way
//        XCTAssertTrue(sut.checkedDivisionResult(firstNum: 10, secondNum: 2, checkedResult: 5))
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil  // free instance from the memory
    }

}
