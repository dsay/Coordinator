import UIKit

open class TabBarCoordinator: Coordinator<UITabBarController> {
    
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
