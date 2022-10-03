//
//  MainViewTests.swift
//  Snapshot TestingTests
//
//  Created by Ranieri Aguiar on 30/09/22.
//

import XCTest
import FBSnapshotTestCase
@testable import Snapshot_Testing

final class MainViewTests: FBSnapshotTestCase {
    
    var sut: MainView!
    
    override func setUp() {
        super.setUp()
        setUpView()
//        self.recordMode = true
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testView() {
        FBSnapshotVerifyView(sut)
    }
    
    private func setUpView() {
        let frame = CGRect(x: 0, y: 0, width: 400, height: 800)
        sut = MainView(frame: frame)
    }
}
