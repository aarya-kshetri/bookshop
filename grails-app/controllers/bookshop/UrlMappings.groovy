package bookshop

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "home")
        "/dashboard"(view: '/index')
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
