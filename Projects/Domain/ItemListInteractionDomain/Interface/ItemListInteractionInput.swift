import Foundation

import DomainModelsDomainInterface

/// https://firebase.google.com/docs/reference/android/com/google/firebase/analytics/FirebaseAnalytics.Event#VIEW_ITEM_LIST()
/// https://firebase.google.com/docs/reference/android/com/google/firebase/analytics/FirebaseAnalytics.Event#SELECT_ITEM()
public protocol ItemListInteractionInput {
    var items: [ItemListItem] { get }
    var itemList: ItemList { get }
    var sendType: ItemListSendType { get }
}
