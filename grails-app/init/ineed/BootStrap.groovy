package ineed

import grails.util.Environment

class BootStrap {
    def haveChanges = 0

    def init = { servletContext ->
        if (Environment.current == Environment.DEVELOPMENT) {
            if ((!SecUser.findByUsername("admin")) || (haveChanges == 1)) {
                System.out.println("creating admin")
                SecUser admin = new SecUser(username: 'admin', password: 'secret', name: "Администратор", enabled: true).save()
                SecUser john = new SecUser(username: 'john', password: 'secret', name: "Джон", enabled: true).save()
                SecUser jane = new SecUser(username: 'jane', password: 'secret', name: "Джейн", enabled: true).save()
                SecRole royalty = new SecRole(authority: 'ROLE_ROYALTY').save()
                SecRole common = new SecRole(authority: 'ROLE_COMMON').save()
                SecRole manager = new SecRole(authority: 'ROLE_MANAGER').save()
                SecUserSecRole.create(admin, royalty)
                SecUserSecRole.create(admin, manager)
                SecUserSecRole.create(admin, common)
                SecUserSecRole.create(john, common)
                SecUserSecRole.create(jane, common)
                SecUserSecRole.create(jane, manager)
                //заполняем тестовыми данными
                def item1 = new Item(item_name: "Ручка шариковая любая", quantity: "3", store: "Комус", reason: "Подписывать крайне важные документы, 2 штуки", user: jane, item_status: "New").save()
                def item2 = new Item(item_name: "Картридж Brother hl 5250", store: "Комус", quantity: "3", reason: "В пигментную, печатат", user: admin, item_status: "New").save()
                new Item(item_name: "Ручка шариковая любая2", quantity: "1", store: "Комус", reason: "Подписывать крайне важные документы", user: jane, item_status: "New").save()
                new Item(item_name: "Ручка шариковая любая3", store: "Комус", quantity: "3", reason: "Подписывать крайне важные документы", user: admin, item_status: "New").save()
                new Item(item_name: "Ручка шариковая любая4", quantity: "2", store: "Комус", reason: "Подписывать крайне важные документы", user: jane, item_status: "New").save()
                new Item(item_name: "Ручка шариковая любая5", quantity: "6", store: "Комус", reason: "Подписывать крайне важные документы", user: jane, item_status: "New").save()
                new Item(item_name: "Ручка шариковая любая6", quantity: "1", store: "Комус", reason: "Подписывать крайне важные документы", user: jane, item_status: "New").save()
                new Item(item_name: "Ручка шариковая любая7", quantity: "7", store: "Комус", reason: "Подписывать крайне важные документы", user: jane, item_status: "New").save()
                new Item(item_name: "Ручка шариковая любая8", quantity: "1", store: "Комус", reason: "Подписывать крайне важные документы", user: john, item_status: "New").save()
                new Item(item_name: "Ручка шариковая любая9", quantity: "9", store: "Комус", reason: "Подписывать крайне важные документы", user: john, item_status: "New").save()
                new Item(item_name: "Ручка шариковая любая0", quantity: "30 штук", store: "Комус", reason: "Подписывать крайне важные документы", user: john, item_status: "New").save()
                new Item(item_name: "Ручка шариковая любая11", quantity: "32", store: "Комус", reason: "Подписывать крайне важные документы", user: john, item_status: "New").save()
                new Item(item_name: "Ручка шариковая любая12", quantity: "3111", store: "Комус", reason: "Подписывать крайне важные документы", user: john, item_status: "New").save()
                new Item(item_name: "Ручка шариковая любая123", quantity: "3ец", store: "Комус", reason: "Подписывать крайне важные документы", user: jane, item_status: "New").save()
                new Item(item_name: "Ручка шариковая любая14", quantity: "33", store: "Комус", reason: "Подписывать крайне важные документы", user: jane, item_status: "New").save()
                new Item(item_name: "Ручка шариковая любая156", quantity: "%;3", store: "Комус", reason: "Подписывать крайне важные документы", user: admin, item_status: "New").save()
                new Item(item_name: "Ручка шариковая любая11", quantity: "9", store: "Комус", reason: "Подписывать крайне важные документы", user: jane, item_status: "New").save()
                new Item(item_name: "Ручка шариковая любая153", quantity: "3", store: "Комус", reason: "Подписывать крайне важные документы", user: jane, item_status: "New").save()

                //Создаем тестовый список
                def list = new ItemList(status: "new", user: admin)
                list.addToItems(item1)
                list.addToItems(item2)
                list.save()


            } else {
                System.out.println("already have admin")
            }
        }
    }
    def destroy = {
    }
}
