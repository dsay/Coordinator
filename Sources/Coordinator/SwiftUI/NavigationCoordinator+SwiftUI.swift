import SwiftUI

public extension NavigationCoordinator {
    
    func push(_ view: AnyView, animated: Bool = true, completion: Completion? = nil) {
        push(view.toViewController, animated: animated, completion: completion)
    }
    
    func set(_ views: [AnyView], animated: Bool = true, completion: Completion? = nil) {
        set(views.compactMap { $0.toViewController }, animated: animated, completion: completion)
    }
    
    func present(_ view: AnyView, animated: Bool = true, completion: Completion? = nil) {
        present(view.toViewController, animated: animated, completion: completion)
    }
    
    func add(_ views: [AnyView], animated: Bool = true, completion: Completion? = nil) {
        add(views.compactMap { $0.toViewController }, animated: animated, completion: completion)
    }
}
