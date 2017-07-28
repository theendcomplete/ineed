package ineed

class ItemListController {
    def springSecurityService
    def scaffold = ItemList
//    def index() { }
    def show() {
        println(params)
        if (ItemList.get(params.id).user == springSecurityService.currentUser) {
            [itemList: ItemList.get(params.id)]
        } else {
            flash.message = "Редактировать может только автор!"
            redirect(controller: 'manage', action: 'timeline')
        }


    }

}
