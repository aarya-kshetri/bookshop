package com.bookshop

import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class SubcategoryController {

    def index() {
        redirect action: "list"
    }


    def list(){
        def subcategories = Subcategory.list()
        [subcat:subcategories]
    }

    def create(){
        [cList: Category.list()]
    }

    def save(){
        def subcategory = Category.findByTitle(params.category)
        new Subcategory(title: params.title, category: subcategory.id).save(flush: true)
        redirect action: "list"
    }

    def edit(){
        def subcatId = params.id
        def subcategory = Subcategory.get(subcatId)
        [subcat: subcategory, cList: Category.list()]
    }
    def update(){
        def subcatId = params.id
        def subcat = Category.findByTitle(params.category)
        def subcategory = Subcategory.get(subcatId)
        subcategory.title = params.title
        subcategory.category = subcat
        subcategory.save(flush: true)
        redirect action: "list"
    }
    def delete(){
        def subcatId = params.id
        def subcategory = Subcategory.get(subcatId)
        subcategory.delete(flush: true)
        flash.message = "Deleted Successfully"
        redirect action: "list"
    }
}
