package com.bookshop

import grails.plugin.springsecurity.annotation.Secured
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder

@Secured('permitAll')
class CustomerController {

    def index() { }

    def register(){
        println "params = $params"
        def email = params.email
        def password = params.password
        println "email = $email"
        println "password = $password"
        def u = new com.bookshop.User(username: email, password: password, enabled: true)
        u.save(flush: true)
//        def user = com.bookshop.User.findByUsername(email)
//        def role = com.bookshop.Role.findById(2)
//        UserRole.create(user: user, role: role)

        redirect (controller: "login", action: "auth")
    }
}
