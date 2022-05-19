//
//  AcronymsAppTests.swift
//  AcronymsAppTests
//
//  Created by Baskaran Thanigaimani on 07/05/22.
//
import XCTest
@testable import AcronymsApp
@testable import Moya

class AcronymsTests: XCTestCase {
    
    var service: AcronymsServiceTest!
    override func setUp() {
        super.setUp()
        service = AcronymsServiceTest.shared
    }
    
    override func tearDown() {
        super.tearDown()
        service = nil
    }

    // Getting Data from API
    func testGetAcronymsWithData() throws {
        let expectation = XCTestExpectation(description: "Get Acronyms Data")
        service.getDescriptionFor(acronyms: "INS") { result in
            switch result {
            case .success(let response):
                XCTAssert(response.count > 0)
            case .failure(let error):
                XCTAssert(false, error.localizedDescription)
            }
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
    }
    
    // Getting Empty response from API
    func testGetAcronymsEmpty() throws {
        let expectation = XCTestExpectation(description: "Get Acronyms Empty")
        service.getDescriptionFor(acronyms: .empty) { result in
            switch result {
            case .success(let response):
                XCTAssert(response.count == 0)
            case .failure:
                XCTAssert(false)
            }
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
    }
}
