package myapp

import grails.gorm.services.Service
import java.util.List

@Service(Country)
interface CountryService {

    Country get(Serializable id)

    void delete(Serializable id)

    Country save(Country country)

    List<Country> list()

}

