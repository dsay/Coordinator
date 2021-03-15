import XCTest
@testable import Coordinator

final class CoordinatorTests: XCTestCase {
    
    func testInit() {
        let coordinator = Coordinator(container: UIView())
        XCTAssertNotNil(coordinator.container)
    }

    static var allTests = [
        ("testInit", testInit),
    ]
}
