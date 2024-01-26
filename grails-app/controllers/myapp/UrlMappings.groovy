package myapp

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:"hotel", action:"main") //view:"/index"
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
