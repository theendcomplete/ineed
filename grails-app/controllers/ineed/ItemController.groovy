package ineed

class ItemController {
//    static scaffold = Item
    def itemService
    def springSecurityService

    def index() {}

    def show() {
        println(params)
        if (Item.get(params.id).user == springSecurityService.currentUser) {
            [item: Item.get(params.id)]
        } else {
            flash.message = "Редактировать может только автор!"
            redirect(controller: 'myaccount', action: 'timeline')
        }

    }


    def showManager() {
        println(params)
        [item: Item.get(params.id)]

    }


    def updateItem() {
        if (params.cancellItem) {
            params.item_status = "Отменён"
        }

        def item = itemService.updateItem(params.id, params.reason, params.item_status, params.link)
        flash.message = "Обновлено: id= ${item.id}, ${item.item_name}"
        redirect(controller: 'myaccount', action: 'timeline')
    }

    def updateItemManager() {
        if (params.cancellItem) {
            params.item_status = "Отменён"
        }

        def item = itemService.updateItem(params.id, params.reason, params.item_status, params.link)
        flash.message = "Обновлено: id= ${item.id}, ${item.item_name}"
        redirect(controller: 'manage', action: 'timeline')
    }

}
