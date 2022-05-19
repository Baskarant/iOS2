//
//  ABSTesting.swift
//  ABS
//
//  Created by Baskaran Thanigaimani on 20/05/22.
//

import XCTest

class ABSTesting: XCTestCase {

    var service: Webservice!
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
        service = nil
    }
    
    func testAcromineWithData() throws {
        let expectation = XCTestExpectation(description: "Get Acromine Data")
        service.getAcromine(searchTerm: "INS") { result in
            switch result {
            case .sucess(let response):
                XCTAssert(response.count > 0)
            case .failure(let error):
                XCTAssert(false, error.localizedDescription)
            }
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
    }
    
    func testAcromineEmpty() throws {
        let expectation = XCTestExpectation(description: "Get Acromine Empty")
        service.getAcromine(searchTerm: "") { result in
            switch result {
            case .sucess(let response):
                XCTAssert(response.count == 0)
            case .failure:
                XCTAssert(false)
            }
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
