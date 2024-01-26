package myapp

import groovy.transform.CompileStatic

@CompileStatic
class BootStrap {


    def init = { servletContext ->

        Country russia = new Country(name: "Россия", capital: "Москва").save()
        Country france = new Country(name: "Франция", capital: "Париж").save()
        Country germany = new Country(name: "Германия", capital: "Берлин").save()
        Country spain = new Country(name: "Испания", capital: "Мадрид").save()
        Country italy = new Country(name: "Италия", capital: "Рим").save()
        Country brazil = new Country(name: "Бразилия", capital: "Бразилиа").save()
        Country canada = new Country(name: "Канада", capital: "Оттава").save()
        Country china = new Country(name: "Китай", capital: "Пекин").save()
        Country egypt = new Country(name: "Египет", capital: "Каир").save()
        Country finland = new Country(name: "Финляндия", capital: "Хельсинки").save()
        Country greece = new Country(name: "Греция", capital: "Афины").save()
        Country southKorea = new Country(name: "Южная Корея", capital: "Сеул").save()
        Country sweden = new Country(name: "Швеция", capital: "Стокгольм").save()
        Country japan = new Country(name: "Япония", capital: "Токио").save()
        Country thailand = new Country(name: "Таиланд", capital: "Бангкок").save()

        new Hotel(name: "Four Seasons", rating: 5, website: "https://thelegendofmoscow.com/", country: russia).save()
        new Hotel(name: "Metropol", rating: 5, website: "https://metropol-moscow.ru/", country: russia).save()
        new Hotel(name: "Azimut", rating: 4, website: "https://azimuthotels.com/ru/moscow/azimut-hotel-smolenskaya", country: russia).save()
        new Hotel(name: "MAKADI PYRAMIDS HOTEL", rating: 3, country: egypt).save()
        new Hotel(name: "Sea Star Beau Rivage", rating: 5, website: "https://seastarbeaurivage.com/", country: egypt).save()
        new Hotel(name: "Sea Star Hotel", rating: 2, country: egypt).save()
        new Hotel(name: "Four Seasons", rating: 5, country: egypt).save()
        new Hotel(name: "The Grand Resort", rating: 4, website: "https://redseahotels.com/resorts/hurghada/the-grand-resort/", country: egypt).save()
        new Hotel(name: "Four Seasons", rating: 3, website: "https://www.fourseasons.gr/", country: greece).save()
        new Hotel(name: "Stelios Gardens", rating: 3, website: "https://steliosgardens.gr/", country: greece).save()
        new Hotel(name: "Astarte Suites", rating: 5, website: "https://www.astartesuites.gr/en/", country: greece).save()
        new Hotel(name: "Casa Gracia", rating: 2, country: spain).save()
        new Hotel(name: "Infanta Mercedes Madrid", rating: 2, website: "https://www.hotelinfantamercedes.es/en/", country: spain).save()
        new Hotel(name: "Mandarin Oriental Ritz", rating: 5, website: "https://www.mandarinoriental.com/en/madrid/hotel-ritz", country: spain).save()
        new Hotel(name: "Amaranta", rating: 4, website: "https://www.amarantahotel.com/", country: thailand).save()
    }
    def destroy = {
    }
}
