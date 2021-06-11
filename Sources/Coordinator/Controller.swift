import Foundation

public protocol CoordinatorRoute {
    
}

public protocol CoordinatorController {
    
    associatedtype Input
    associatedtype Output
    associatedtype Dependencies

    var route: ((CoordinatorRoute) -> Void)? { get set }
    
    var input: Input { get set }
    var output: Output? { get set }
     
    var dependencies: Dependencies { get set }
    
    init()
    init(with dependencies: Dependencies, _ input: Input, _ output: Output?)
    
    func start()
}

public extension CoordinatorController {
    
    init(with dependencies: Dependencies, _ input: Input, _ output: Output?) {
        self.init()
        self.dependencies = dependencies
        self.input = input
        self.output = output
    }
    
    func start() {
        
    }
}
