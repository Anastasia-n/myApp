package myapp

import grails.gorm.transactions.Transactional
import grails.validation.ValidationException

@Transactional
class HotelService {

//    def list() {
//        Hotel.list()
//    }

    def findAll(int max, int offset){
        Hotel.list([max:max, offset:offset])
    }

    def get(id){
        Hotel.get(id)
    }

    def save(hotel){
        if(!hotel.validate()){
            throw new ValidationException("error on save operation", hotel.errors)
        }
        hotel.save()
    }

    def delete(id){
        Hotel.get(id).delete()
    }

    def count(){
        Hotel.count()
    }
}
