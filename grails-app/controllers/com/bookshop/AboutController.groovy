package com.bookshop

import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class AboutController {

    def index() { }
}
