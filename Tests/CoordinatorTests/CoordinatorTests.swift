import XCTest
@testable import Coordinator

final class CoordinatorTests: XCTestCase {

    var coordinator: Coordinator<UIView>!

    override func setUp() {
        super.setUp()
        coordinator = Coordinator(container: UIView())
    }
    
    func testCoordinatorInit() {
        XCTAssertNotNil(coordinator.container)
    }
    
    func testCoordinatorAddChild() {
        let child = Coordinator(container: UIView())
        
        coordinator.addChild(child)
        
        XCTAssertEqual(coordinator.childs.count, 1)
    }
    
    func testCoordinatorRemoveChild() {
        let child = Coordinator(container: UIView())

        coordinator.addChild(child)
        coordinator.removeAllChilds()

        XCTAssertEqual(coordinator.childs.count, 0)
    }
    
    func testCoordinatorRemoveAllChild() {
        let child = Coordinator(container: UIView())
        let child1 = Coordinator(container: UIView())

        coordinator.addChild(child)
        coordinator.addChild(child1)
        coordinator.removeAllChilds()

        XCTAssertEqual(coordinator.childs.count, 0)
    }
    
    static var allTests = [
        ("testCoordinatorInit", testCoordinatorInit),
        ("testCoordinatorAddChild", testCoordinatorAddChild),
        ("testCoordinatorRemoveChild", testCoordinatorRemoveChild),
        ("testCoordinatorRemoveAllChild", testCoordinatorRemoveAllChild),
    ]
}
