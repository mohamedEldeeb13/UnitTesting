//
//  ApiService.swift
//  UnitTestingTests
//
//  Created by Mohamed Abd Elhakam on 04/03/2024.
//

import XCTest
@testable import UnitTesting

final class ApiService: XCTestCase {
    
    var sut : APIService!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = APIService()
    }
    
    func getRepositoryTest(){
        let expection = XCTestExpectation(description: "Repositories Downloaded") // API is asynchrouns operation so that's why we are using XCTestExpectation to be able to wait untill finishing
        var responseError : Error?
        var responseRepositoiries : [Repository]?
        sut.getRepositories { (repositories, error) in
            responseError = error
            responseRepositoiries = repositories
            expection.fulfill()
            
        }
            wait(for: [expection], timeout: 1)
            XCTAssertNil(responseError)// Make sure that error == nil
            XCTAssertNotNil(responseRepositoiries) // Make sure that response != nil
        }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

}
