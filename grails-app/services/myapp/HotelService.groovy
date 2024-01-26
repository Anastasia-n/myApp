package myapp

import grails.gorm.services.Service
import java.util.List

@Service(Hotel)
interface HotelService {

    Hotel get(Serializable id)

    void delete(Serializable id)

    Hotel save(Hotel hotel)

    List<Hotel> list()

}

