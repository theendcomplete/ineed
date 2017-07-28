package ineed

class Item {
    String item_name
    String vendorCode
    String quantity
    String link
    String store
    String item_status
    String reason
    Date dateCreated
    Date lastUpdated

    static belongsTo = [user    : SecUser,
                        itemList: ItemList]

    static constraints = {
        item_name(nullable: false)
        vendorCode(nullable: true)
        quantity(nullable: true)
        link(nullable: true)
        store(nullable: true)
        item_status(nullable: true)
        user(nullable: true)
        itemList(nullable: true)
        reason(nullable: true)
    }
}