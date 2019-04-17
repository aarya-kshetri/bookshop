package com.bookshop

import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class AdminController {

    def index() { }

    def dashboard(){
        render(view: "index")
    }
}
