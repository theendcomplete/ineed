package ineed

class ManageController {
    def springSecurityService
    def itemListService

    def index() {
        redirect(action: 'timeline')
    }

    def createItemList() {
        println(params)
        def checkedItems = params.list('checkbox')
        itemListService.createItemList(checkedItems)
        redirect(action: 'timeline')
    }

    def timeline() {
        SecUser user = springSecurityService.currentUser
        if (user) {
            params.sort = params.sort ?: "dateCreated"
            params.order = params.order ?: "desc"
            params.max = params.max ?: "50"
//            def itemList = Item.findAllByItem_status("New", params)
            def itemList = Item.list(params)
            def itemListList = ItemList.findAllByUser(user, params)
            [itemList    : itemList, total: user.items.size(),
             itemListList: itemListList, totalitemListList: itemListList.size()]
        }

    }
}
