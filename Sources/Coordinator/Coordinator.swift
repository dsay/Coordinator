import UIKit

open class Coordinator<T: UIResponder> {
    
    let hash = UUID.init().hashValue
    
    private(set) var container: T
    private(set) var childs: Set<AnyHashable> = []
    
    public init(container: T) {
        self.container = container
        self.start()
    }
    
    public func start() {
        
    }
    
    public func addChild(_ child: AnyHashable) {
        childs.insert(child)
    }
    
    public func removeChild(_ child: AnyHashable) {
        childs.remove(child)
    }
    
    public func removeAllChilds() {
        childs.removeAll()
    }
}

extension Coordinator {
    
    public typealias Completion = () -> Void
    
    public func wrapAnimation(in action: Completion, completion: Completion? = nil) {
        CATransaction.begin()
        CATransaction.setCompletionBlock(completion)
        action()
        CATransaction.commit()
    }
}

extension Coordinator: Hashable {

    public static func == (lhs: Coordinator<T>, rhs: Coordinator<T>) -> Bool {
        lhs.hash == rhs.hash
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(hash)
    }
}
