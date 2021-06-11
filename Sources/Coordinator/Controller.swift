import Foundation

public protocol CoordinatorRoute {
    
}

public protocol CoordinatorController {
    
    associatedtype Input
    associatedtype Output
    associatedtype Dependencies
    associatedtype Route = CoordinatorRoute

    var route: ((Route) -> Void)? { get set }
    
    var input: Input! { get set }
    var output: Output? { get set }
     
    var dependencies: Dependencies! { get set }
    
    init()
    init(with dependencies: Dependencies, _ input: Input, _ output: Output?)
    
    func configure()
}

public extension CoordinatorController {
    
    init(with dependencies: Dependencies, _ input: Input, _ output: Output?) {
        self.init()
        self.dependencies = dependencies
        self.input = input
        self.output = output
    }
}
