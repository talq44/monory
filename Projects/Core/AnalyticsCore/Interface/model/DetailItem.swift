import Foundation

public struct DetailItem: Codable {
    public let item_id: String
    public let item_name: String
    public let item_list_id: String?
    public let item_list_name: String?
    public let item_category: String
    public let item_category2: String?
    public let item_category3: String?
    public let item_category4: String?
    public let item_category5: String?
    
    public init(
        item_id: String,
        item_name: String,
        item_list_id: String?,
        item_list_name: String?,
        item_category: String,
        item_category2: String? = nil,
        item_category3: String? = nil,
        item_category4: String? = nil,
        item_category5: String? = nil
    ) {
        self.item_id = item_id
        self.item_name = item_name
        self.item_category = item_category
        self.item_category2 = item_category2
        self.item_category3 = item_category3
        self.item_category4 = item_category4
        self.item_category5 = item_category5
        self.item_list_id = item_list_id
        self.item_list_name = item_list_name
    }
}
