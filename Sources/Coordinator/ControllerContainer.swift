import Foundation

public protocol ControllerContainer: Coordinator {

    associatedtype Controller = CoordinatorController

    var controller: Controller! { get set }
    
    init(with container: Сontainer, _ controller: Controller)
}

public extension ControllerContainer {
        
    init(with container: Сontainer, _ controller: Controller) {
        self.init()
        self.container = container
        self.controller = controller
        self.start()
    }
    
    func start() {
    
    }
}
