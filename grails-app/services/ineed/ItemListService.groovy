package ineed

import grails.gorm.transactions.Transactional


@Transactional
class ItemListService {
    def springSecurityService

    ItemList createItemList(List items) {
        SecUser user = springSecurityService.currentUser
        if (user) {
            String status = "New"
            def newItemList = new ItemList(status: status)
            user.addToItemLists(newItemList)
            newItemList.save(flush: true, failOnError: true)

            for (item in items) {
                newItemList.addToItems(Item.get(item))
//                Item.get(item).itemList = Item.get(item).itemList ?: "10"
                Item.get(item).item_status = Item.get(item).itemList.status + Item.get(item).itemList
//                Item.get(item).save()
            }
            if (user.save()) {
                return newItemList
            } else {
                throw new ItemException(message: "invalid or empty sn" + newItemList)
            }
        } else {
            throw new ItemException(message: "invalid or empty user")
        }
    }
}
