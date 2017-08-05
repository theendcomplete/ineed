package ineed

import grails.gorm.transactions.Transactional

class ItemException extends RuntimeException {
    String message
    Item item
}

@Transactional
class ItemService {
    def springSecurityService

    Item createItem(String item_name, String vendorCode, String quantity,
                    String link, String store, String reason) {
        SecUser user = springSecurityService.currentUser
        if (user) {
            String status = "New"
            def newItem = new Item(item_name: item_name, vendorCode: vendorCode,
                    quantity: quantity, link: link, store: store, item_status: status,
                    reason: reason)
            user.addToItems(newItem)
            if (user.save()) {
                return newItem
            } else {
                throw new ItemException(message: "invalid or empty sn" + newItem)
            }
        } else {
            throw new ItemException(message: "invalid or empty user")
        }
    }

    Item updateItem(String id, String reason, String item_status, String link) {
        Item updItem = Item.get(id)
        updItem.reason = reason
        updItem.link = link
        item_status = item_status ?: "Обновлён"
        if (!updItem.itemList) {
            updItem.item_status = item_status
        }
        if (item_status.equals("Отменён")) {
            updItem.item_status = item_status
            updItem.itemList = null
        }
        updItem.save()
    }
}
