package com.bookshop

class Subcategory {
String title
    static hasMany = [book:Book]
    static belongsTo = [category:Category]
    static constraints = {
    }

    String toString(){
        title
    }
}
