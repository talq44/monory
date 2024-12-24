import Foundation

import ScreenViewDomainInterface

struct StubScreenViewInput: ScreenViewInput {
    let screenClass: AnyClass
    let screenType: ScreenViewDomainInterface.ScreenType
    
    public init(
        screenClass: AnyClass,
        screenType: ScreenViewDomainInterface.ScreenType
    ) {
        self.screenClass = screenClass
        self.screenType = screenType
    }
}
