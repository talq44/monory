import Foundation

public enum AnalyticsEvent {
    case add_to_wishlist(AddToWishlist)
    case login(Login)
    case screen_view(ScreenView)
    case search(Search)
    case select_content(SelectContent)
    case selct_item(SelectItem)
    case share(Share)
    case sign_up(SignUp)
    case view_item(ViewItem)
    case view_item_list(ViewItemList)
    case view_search_results(ViewSearchResults)
}