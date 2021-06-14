import SwiftUI

public extension WindowCoordinator {
    
     func setRoot(view: AnyView, animated: Bool = false) {
        setRoot(viewControler: view.toViewController, animated: animated)
     }
}
