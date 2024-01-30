package myapp

import grails.gorm.transactions.Transactional
import grails.validation.ValidationException

@Transactional
class CountryService {

    def list() {
        Country.list()
    }

    def findAll(int max, int offset){
        Country.list([max:max, offset:offset])
    }

    def get(id){
        Country.get(id)
    }

    def save(country){
        if(!country.validate()){
            throw new ValidationException("error on save operation", country.errors)
        }
        country.save()
    }

    def delete(id){
        Country.get(id).delete()
    }

    def count(){
        Country.count()
    }
}
