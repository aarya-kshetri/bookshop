package com.bookshop

import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class CategoryController {

    def index() {
        redirect action: "list"
    }

    def list(){
        def categories = Category.list()
        [cat:categories]
    }

    def create(){

    }

    def save(){
        new Category(params).save(flush: true)
        redirect action: "list"
    }

    def edit(){
        def catId = params.id
        def category = Category.get(catId)
        [cat: category]
    }
    def update(){
        def catId = params.id
        def category = Category.get(catId)
        category.title = params.title
        category.save(flush: true)
        redirect action: "list"
    }
    def delete(){
        def catId = params.id
        def category = Category.get(catId)
        category.delete(flush: true)
        flash.message = "Deleted Successfully"
        redirect action: "list"
    }
}
