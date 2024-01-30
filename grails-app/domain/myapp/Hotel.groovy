package myapp

class Hotel {

    String name
    Integer rating
    String website
    Country country

    static belongsTo = [country:Country]

    static constraints = {
        name blank: false, maxSize: 255, unique: ['country']
        rating range: 1..5
        website nullable: true, blank: true, matches: "^(http|https)://.*\$"
        country blank: false
    }
}
