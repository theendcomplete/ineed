package ineed

import grails.plugin.springsecurity.SpringSecurityService

class MyaccountController {
    ItemService itemService
    SpringSecurityService springSecurityService

    def index() {
        redirect(action: 'timeline')
    }

    def timeline() {
        def user = springSecurityService.currentUser
        if (user) {
            params.sort = params.sort ?: "dateCreated"
            params.order = params.order ?: "desc"
            params.max = params.max ?: "10"

            def itemList = Item.findAllByUser(user, params)
            [itemList: itemList, total: user.items.size()]
        }
    }

    def ajaxAddItem() {
//        println(params)
        String store = "Комус"
        Item newItem = itemService.createItem(params.name, params.vendorCode, params.quantity, params.link, store, params.reason)
        flash.message = "Сохранено: ${newItem.item_name}"
        redirect(action: 'timeline')
    }
}
