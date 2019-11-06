//
//  TestPipeLineUITests.swift
//  TestPipeLineUITests
//
//  Created by Gupta, Rahul @ Gurgaon on 04/11/19.
//  Copyright © 2019 Gupta, Rahul @ Gurgaon. All rights reserved.
//

import XCTest

class TestPipeLineUITests: XCTestCase {
    private var app: XCUIApplication!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        app = XCUIApplication()
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        app = nil
    }

    func testExample() {
        app.launch()
        XCTAssert(app.staticTexts["Hello World"].exists, "Hello World is not visible")
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                app.launch()
            }
        }
    }
}
