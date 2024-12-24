import Foundation

import ScreenViewDomainInterface

final class MockScreenViewRepository: ScreenViewRepository {
    public var screenName: String? = nil
    public var screenClass: String? = nil
    
    func send(screenName: String, screenClass: String) {
        self.screenName = screenName
        self.screenClass = screenClass
    }
}
