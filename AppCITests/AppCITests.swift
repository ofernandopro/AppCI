//
//  AppCITests.swift
//  AppCITests
//
//  Created by Fernando on 19/04/23.
//

import XCTest
@testable import AppCI

final class AppCITests: XCTestCase {
    
    var homeVC: HomeVC!

    override func setUpWithError() throws {
        try super.setUpWithError()
        homeVC = HomeVC()
        // Carrega a view manualmente para testar o método viewDidLoad
        homeVC.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
        homeVC = nil
        try super.tearDownWithError()
    }

    func testSetNumber() {
        XCTAssertEqual(homeVC.setNumber(), 24)
    }

}
