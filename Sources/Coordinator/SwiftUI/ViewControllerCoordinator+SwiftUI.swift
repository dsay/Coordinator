import SwiftUI

public extension ViewControllerCoordinator {
    
    func add(_ child: AnyView, frame: CGRect? = nil) {
        let childVC = child.toViewController
        container.addChild(childVC)
        if let frame = frame {
            childVC.view.frame = frame
        }
        container.view.addSubview(childVC.view)
        childVC.didMove(toParent: container)
    }

    func present(_ view: AnyView, animated: Bool = true, completion: Completion? = nil) {
        present(view.toViewController, animated: animated, completion: completion)
    }
}
