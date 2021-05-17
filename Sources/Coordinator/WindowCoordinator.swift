import UIKit

open class WindowCoordinator: Coordinator<UIWindow> {
    
    public func setRoot(viewControler: UIViewController, animated: Bool = false) {
        if let snapshot = container.rootViewController?.view.snapshotView(afterScreenUpdates: true), animated {
            viewControler.view.addSubview(snapshot)
            container.rootViewController = viewControler
            
            UIView.animate(
                withDuration: 0.35,
                delay: 0.0,
                options: [.curveEaseOut],
                animations: {
                    snapshot.alpha = 0
                }) { _ in
                snapshot.removeFromSuperview()
            }
        } else {
            container.rootViewController = viewControler
        }
    }
    
    public func setRoot(_ coordinator: Coordinator<UIViewController>, animated: Bool = true) {
        removeAllChilds()
        addChild(coordinator)
        
        setRoot(viewControler: coordinator.container, animated: animated)
    }
    
    public func setRoot(_ coordinator: Coordinator<UINavigationController>, animated: Bool = true) {
        removeAllChilds()
        addChild(coordinator)
        
        setRoot(viewControler: coordinator.container, animated: animated)
    }
    
    public func setRoot(_ coordinator: Coordinator<UITabBarController>, animated: Bool = true) {
        removeAllChilds()
        addChild(coordinator)
        
        setRoot(viewControler: coordinator.container, animated: animated)
    }
}
