import XCTest
import _SwiftXCTestOverlayShims
@testable import AppCodeDebug2

class AppCodeDebug2Tests: XCTestCase {
    func testExample() {
        let context = _XCTContextCurrent()
        XCTAssertEqual(_XCTContextShouldStartActivity(context, XCTActivityTypeUserCreated), true)
    }

    func testActualUse() {
        XCTContext.runActivity(named: "TEST1") { _ in
            XCTContext.runActivity(named: "TEST2") { _ in
                XCTAssertEqual("a", "A")
            }
        }
    }
}
