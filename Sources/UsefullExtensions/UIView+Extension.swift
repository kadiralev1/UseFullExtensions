import UIKit

extension UIView {
    
    enum Direction {
        case leftToRight
        case topLeftToBottomRight
        
        var startPoint: CGPoint {
            switch self {
            case .leftToRight:
                return CGPoint(x: 0, y: 0.5)
            case .topLeftToBottomRight:
                return CGPoint(x: 0, y: 0)
            }
        }
        
        var endPoint: CGPoint {
            switch self {
            case .leftToRight:
                return CGPoint(x: 1, y: 0.5)
            case.topLeftToBottomRight:
                return CGPoint(x: 1, y: 1)
            }
        }
    }
    
    func applyGradient(colors: [UIColor], direction: Direction) {
        let gradient = CAGradientLayer()
        gradient.colors = colors.map({$0.cgColor})
        gradient.startPoint = direction.startPoint
        gradient.endPoint = direction.endPoint
        gradient.frame = self.bounds
        self.layer.insertSublayer(gradient, at: 0)
    }
}
