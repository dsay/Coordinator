import UIKit

class Coordinator<T: UIResponder>: Hashable {
    
    let hash = UUID.init().hashValue

    private(set) var container: T
    private(set) var childs: Set<AnyHashable> = []
    
    init(container: T) {
        self.container = container
        self.start()
    }
    
    func start() {

    }
    
    func addChild(_ child: AnyHashable) {
        childs.insert(child)
    }
    
    func removeChild(_ child: AnyHashable) {
        childs.remove(child)
    }
    
    func removeAllChilds() {
        childs.removeAll()
    }
    
    static func == (lhs: Coordinator<T>, rhs: Coordinator<T>) -> Bool {
        lhs.hash == rhs.hash
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(hash)
    }
}

extension Coordinator {
    
    typealias Completion = () -> Void
    
    func wrapAnimation(in action: Completion, completion: Completion? = nil) {
        CATransaction.begin()
        CATransaction.setCompletionBlock(completion)
        action()
        CATransaction.commit()
    }
    
}
