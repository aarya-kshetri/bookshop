package com.bookshop

import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class HomeController {

    def index() {


        if (SpringSecurityUtils.ifAllGranted('ROLE_ADMIN')) {
            redirect (controller: 'admin', action: 'dashboard')
            return
        }
        if (SpringSecurityUtils.ifAllGranted('ROLE_USER')) {
            redirect controller: 'home', action: 'dashboard'
            return
        }else{
            redirect controller: 'home', action: 'dashboard'
            return
        }


    }

    def dashboard(){
        def cat = Category.list()

        def subcat = Subcategory.getAll()
        def books = Book.getAll()
        render(view:"index",model:[cat: cat, subcat: subcat, book: books])
    }


    def getSubcategory(){
        def subcatId = params.id
        def subcategory = Subcategory.get(subcatId)
        def books = Book.findAllBySubcategory(subcategory)

        def cat = Category.list()

        def subcat = Subcategory.getAll()

        render(view: "index",model:[cat: cat, subcat: subcat, book: books])
    }

    def detail(){
        def bookId = params.id
        def book = Book.get(bookId)
        [book: book]
    }
}
