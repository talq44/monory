import ProjectDescription

public enum DomainModule: String, CaseIterable {
    case BookmarkListDomain
	case BookmarkUpdateDomain
    case DomainModelsDomain
    case ItemListInteractionDomain
	case SearchListDomain
    case ViewItemDomain
    
    public var name: String {
        self.rawValue
    }
}
