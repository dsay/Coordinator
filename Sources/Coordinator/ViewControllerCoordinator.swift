import UIKit

open class ViewControllerCoordinator: Coordinator<UIViewController> {
    
    public func addSubview(_ view: UIView) {
        container.view.addSubview(view)
    }
    
    public func add(_ child: UIViewController, frame: CGRect? = nil) {
        container.addChild(child)
        if let frame = frame {
            child.view.frame = frame
        }
        container.view.addSubview(child.view)
        child.didMove(toParent: container)
    }
    
    public func remove(_ child: UIViewController) {
        child.willMove(toParent: nil)
        child.view.removeFromSuperview()
        child.removeFromParent()
    }
    
    public func present(_ viewController: UIViewController, animated: Bool = true, completion: Completion? = nil) {
        container.present(viewController, animated: animated, completion: completion)
    }
}
