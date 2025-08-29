import ProjectDescription

public enum CoreModule: String, CaseIterable {
	case DesignSystemCore
	case RemoteConfigCore
	case AnalyticsCore
	case UserAPICore
    
    public var name: String {
        self.rawValue
    }
}
