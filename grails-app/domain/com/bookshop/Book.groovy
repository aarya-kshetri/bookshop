package com.bookshop

class Book {
String isbn
    String title
    static belongsTo = [subcategory: Subcategory]
    String author
    String publisher
    String stock
    String publicationDate
    String description
    String image
    String price
    static constraints = {
        isbn unique: true
    }
    static mapping = {
        description sqlType:"text"
    }
}
