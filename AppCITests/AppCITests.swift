//
//  AppCITests.swift
//  AppCITests
//
//  Created by Fernando on 19/04/23.
//

import XCTest
@testable import AppCI

final class AppCITests: XCTestCase {
    
    var quizVC: QuizVC!
    var homeVC: HomeVC!
    var universitariosVC: UniversitariosVC!
    
    override func setUp() {
        super.setUp()
        quizVC = QuizVC()
        quizVC.viewDidLoad()
    }
    
    override func tearDown() {
        quizVC = nil
        super.tearDown()
    }
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        homeVC = HomeVC()
//        quizVC = QuizVC()
//        universitariosVC = UniversitariosVC()
        // Carrega a view manualmente para testar o método viewDidLoad
//        homeVC.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
        homeVC = nil
//        quizVC = nil
//        universitariosVC = nil
        try super.tearDownWithError()
    }
    
    func testPintarViewCorretaEIncorretas_CorrectAnswer() {
//        quizVC.altSelected = 1
//        quizVC.altCorreta = 1
//        quizVC.pintarViewCorretaEIncorretas(altCorreta: 1, altSelected: 1)
//        
//        XCTAssertEqual(quizVC.alt1View.backgroundColor, .systemGreen, "Selected and correct answer should be green")
//        XCTAssertEqual(quizVC.alt2View.backgroundColor, UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1), "Other options should remain unchanged")
    }
    
    func testSetLabelsTemaHumanas() {
//        universitariosVC.setLabelsTemaHumanas(randomNum: 0, altCorreta: 1, nivel: 3)
//        XCTAssertEqual(universitariosVC.resposta1Label.text, "A")
//        XCTAssertEqual(universitariosVC.resposta2Label.text, "A")
//        XCTAssertEqual(universitariosVC.resposta3Label.text, "B")
    }

}
