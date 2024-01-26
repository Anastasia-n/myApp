package myapp

import grails.validation.ValidationException

class CountryController {

    def countryService

    def index() {
        respond countryService.list()
    }

    def create() {
        respond new Country(params)
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