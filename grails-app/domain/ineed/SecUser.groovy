package ineed

import grails.compiler.GrailsCompileStatic
import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@GrailsCompileStatic
@EqualsAndHashCode(includes = 'username')
@ToString(includes = 'username', includeNames = true, includePackage = false)
class SecUser implements Serializable {

    private static final long serialVersionUID = 1

    String username
    String password
    String name
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired

    static hasMany = [items: Item, itemLists: ItemList]
//    static hasMany = [Item, ItemList]
//    static hasMany = [Item, ItemList]
//    static hasMany = [items: Item]

    Set<SecRole> getAuthorities() {
        (SecUserSecRole.findAllBySecUser(this) as List<SecUserSecRole>)*.secRole as Set<SecRole>
    }

    static constraints = {
        password blank: false, password: true
        username blank: false, unique: true
        items(nullable: true)
        itemLists(nullable: true)
    }

    static mapping = {
        password column: '`password`'
    }

    String toString() {
        return name
    }
}
