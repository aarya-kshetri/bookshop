package com.bookshop

class Category {
    String title
    static hasMany = [subcategory: Subcategory]
    static constraints = {
    }

    String toString(){
        title
    }
}
