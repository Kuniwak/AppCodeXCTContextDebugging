import XCTest
import _SwiftXCTestOverlayShims

class AppCodeDebug2UITests: XCTestCase {
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
