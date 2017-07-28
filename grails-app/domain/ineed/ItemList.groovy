package ineed

class ItemList {
    String number
    Date dateCreated
    Date lastUpdated
    Date dateDone
    String status

    static hasMany = [items: Item]
    static belongsTo = [user: SecUser]
    static constraints = {
        number(nullable: true)
        dateDone(nullable: true)
        status(nullable: true)
    }

    String toString() {
        return "Заказ №" + id
    }
}
