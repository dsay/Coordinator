import UIKit

class WindowCoordinator: Coordinator<UIWindow> {
    
    func setRoot(viewControler: UIViewController, animated: Bool = false) {
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
    
}
