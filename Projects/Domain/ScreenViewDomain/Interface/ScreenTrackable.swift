import UIKit
import SwiftUI

public protocol ScreenTrackable {
    var screenName: String { get }
}

extension UIViewController: ScreenTrackable {
    public var screenName: String { String(describing: type(of: self)) }
}

extension UIView: ScreenTrackable {
    public var screenName: String { String(describing: type(of: self)) }
}
