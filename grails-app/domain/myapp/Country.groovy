package myapp

class Country {

    String name
    String capital

    static hasMany = [hotels:Hotel]

    static constraints = {
        name maxSize: 255, unique: true, blank:false
        capital maxSize: 128, blank:false
    }
}
