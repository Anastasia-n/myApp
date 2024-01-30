package myapp

import grails.validation.ValidationException

class CountryController {

    def countryService

    def index() {
        def max = 10
        def offset = params.offset?.toInteger() ?: 0
        def countryList = countryService.findAll(max,offset)
        [countryList: countryList, countryCount: countryService.count(), offset:offset, max:max]
    }

    def create() {
        respond new Country()
    }

    def edit(Long id) {
        respond countryService.get(id)
    }

    def update(Country country) {
        try {
            countryService.save(country)
        } catch (ValidationException e) {
            respond country.errors, view:'edit'
            return
        }
        redirect action:"index", method:"GET"
    }

    def save(Country country) {
        try {
            countryService.save(country)
        } catch (ValidationException e) {
            respond country.errors, view:'create'
            return
        }
        redirect action:"index", method:"GET"
    }

    def delete(Long id) {
        countryService.delete(id)
        redirect action:"index", method:"GET"
    }

}