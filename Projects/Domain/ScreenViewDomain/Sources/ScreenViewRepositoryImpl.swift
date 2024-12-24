import Foundation

import AnalyticsCoreInterface
import ScreenViewDomainInterface

final class ScreenViewRepositoryImpl: ScreenViewRepository {
    
    private let analytics: AnalyticsCoreInterface.AnalyticsProtocol
    
    init(analytics: AnalyticsCoreInterface.AnalyticsProtocol) {
        self.analytics = analytics
    }
    
    func send(screenName: String, screenClass: String) {
        let screenView = ScreenView(
            screen_class: screenClass,
            screen_name: screenName
        )
        self.analytics.sendEvent(.screen_view(screenView))
    }
}
