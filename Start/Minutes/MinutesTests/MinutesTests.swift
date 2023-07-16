//
//  MinutesTests.swift
//  MinutesTests
//
//  Created by Cai on 7/16/23.
//  Copyright © 2023 Microsoft. All rights reserved.
//

import XCTest
@testable import Minutes

final class MinutesTests: XCTestCase {
    
    var entryUnderTest: Entry!
    
    override func setUp() {
        super.setUp()
        
        entryUnderTest = Entry("Title", "Content")
    }
    
    override func tearDown() {
        entryUnderTest = nil
        super.tearDown()
    }
    
    func testSerialization() {
        let serializedData = FileEntryStore.serialize(entryUnderTest)
        let entry = FileEntryStore.deserialize(serializedData!)
        
        XCTAssertEqual(entry?.title, "Title", "Title does not match")
        XCTAssertEqual(entry?.content, "Content", "Content does not match")
    }

//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//        entryUnderTest = Entry("Title", "Content")
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }

//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//        // Any test you write for XCTest can be annotated as throws and async.
//        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
//        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
//    }
//
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
