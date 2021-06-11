import UIKit

open class TabBarCoordinator: Coordinator {
    
    public var id: String! = UUID().uuidString
    public var children: Set<AnyHashable>! = []
    public var container: UITabBarController!
    
    required public init() {
        
    }
    
    open func start() {
        
    }
    
    public func set(_ viewControllers: [UIViewController], animated: Bool = true, completion: Completion? = nil) {
        wrapAnimation(in: {
            self.container.setViewControllers(viewControllers, animated: animated)
        }, completion: completion)
    }
    
    public func select(index: Int, completion: Completion? = nil) {
        wrapAnimation(in: {
            self.container.selectedIndex = index
        }, completion: completion)
    }
}
