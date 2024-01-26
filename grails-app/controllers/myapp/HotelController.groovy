package myapp

import grails.validation.ValidationException

class HotelController {

    def hotelService
    def countryService

    def index() {
        respond hotelService.list()
    }

    def create() {
        def countries = countryService.list()
        def hotel = new Hotel(params)
        [hotel: hotel, countries: countries]
    }

    def edit(Long id) {
        def countries = countryService.list()
        def hotel = hotelService.get(id)
        [hotel: hotel, countries: countries]
    }

    def update(Hotel hotel) {
        try {
            hotelService.save(hotel)
        } catch (ValidationException e) {
            def countries = countryService.list()
            render(view: "edit", model:[hotel:hotel,countries:countries,errors:hotel.errors])
            return
        }
        redirect action:"index", method:"GET"
    }

    def save(Hotel hotel) {
        try {
            hotelService.save(hotel)
        } catch (ValidationException e) {
            def countries = countryService.list()
            render(view: "create", model:[hotel:hotel,countries:countries,errors:hotel.errors])
            return
        }
        redirect action:"index", method:"GET"
    }

    def delete(Long id) {
        hotelService.delete(id)
        redirect action:"index", method:"GET"
    }

    def main() {
        def countries = countryService.list()
        [countries: countries]
    }

    def find(String name, Long countryId) {
        def max = 10
        def offset = params.offset?.toInteger() ?: 0
        def c = Hotel.createCriteria()
        def hotels = c.list (max:max, offset:offset) {
            ilike("name", "%"+name+"%")
            if(countryId) {
                eq("country.id", countryId)
            }
            order("rating", "desc")
            order("name", "asc")
        }
        if(hotels.isEmpty()){
            def notFoundMessage = "По Вашему запросу ничего не найдено"
            def countries = countryService.list()
            render(view: "main", model:[notFoundMessage:notFoundMessage, countries:countries])
        }
        def totalCount = hotels.totalCount
        [hotels:hotels, offset:offset, totalCount:totalCount, name:name, countryId:countryId, max:max]
    }

}
