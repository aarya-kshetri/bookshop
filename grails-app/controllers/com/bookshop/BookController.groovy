package com.bookshop

import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class BookController {
def bookService
    def index() {
        redirect action: "list"
    }
    def list(){
        def books = Book.list()
        [books:books]
    }
    def create(){
        [cList:Subcategory.list()]
    }

    def save(){
        def subcat = Subcategory.findByTitle(params.subcategory)
        def getImage = params.image
        def okContentTypes = ['image/png', 'image/jpeg', 'image/jpg', 'image/gif']

        if (!okContentTypes.contains(getImage.getContentType())) {
            render "Invalid image"
        }else{
            def fileUploaded= bookService.uploadFile(getImage, "${getImage.originalFilename}","assets/images")
            println "fileUploaded = $fileUploaded"
            if( fileUploaded){
                println "here"
                def book = new Book(isbn: params.isbn, title: params.title, publisher: params.publisher, publicationDate: params.publicationDate, price: params.price, image: getImage.originalFilename, stock: params.stock, description: params.description, author: params.author, subcategory: subcat.id)
                book.save(flush:true)

                redirect(action: "index")
            }
        }
    }

    def edit(){
        def bookId = params.id
        def book = Book.get(bookId)
        [book:book,cList:Subcategory.list()]
    }
    def update(){
        def bookId = params.id
        def subcat = Subcategory.findByTitle(params.subcategory)
        def book = Book.get(bookId)

        def getImage = params.image
        def okContentTypes = ['image/png', 'image/jpeg', 'image/jpg', 'image/gif']

        if (!okContentTypes.contains(getImage.getContentType())) {
            render "Invalid image"
        }else{
            def fileUploaded= bookService.uploadFile(getImage,"${getImage.originalFilename}","assets/images")
            println "fileUploaded = $fileUploaded"
            if(fileUploaded){
                println "here"
                book.isbn = params.isbn
                book.title = params.title
                book.subcategory = subcat
                book.author = params.author
                book.publisher = params.publisher
                book.stock = params.stock
                book.description = params.description
                book.image = getImage.originalFilename
                book.price = params.price
                book.save(flush: true)
                redirect action: "list"

            }
        }


    }
    def delete(){
        def bookId = params.id
        def book = Book.get(bookId)
        book.delete(flush: true)
        flash.message = "Deleted Successfully"
        redirect action: "list"
    }
}
