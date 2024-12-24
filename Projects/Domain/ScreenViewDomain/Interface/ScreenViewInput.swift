import Foundation

public protocol ScreenViewInput {
    var screenClass: AnyClass { get }
    var screenType: ScreenType { get }
}

public struct ScreenViewInputImpl: ScreenViewInput {
    public let screenClass: AnyClass
    public let screenType: ScreenType
    
    public init(screenClass: AnyClass, screenType: ScreenType) {
        self.screenClass = screenClass
        self.screenType = screenType
    }
}
