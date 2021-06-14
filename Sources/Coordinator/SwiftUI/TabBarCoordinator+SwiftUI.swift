import SwiftUI

public extension TabBarCoordinator {
    
     func set(_ views: [AnyView], animated: Bool = true, completion: Completion? = nil) {
        set(views.compactMap { $0.toViewController }, animated: animated, completion: completion)
    }
}
