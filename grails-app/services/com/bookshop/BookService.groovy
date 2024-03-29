package com.bookshop

import grails.gorm.transactions.Transactional
import grails.web.context.ServletContextHolder
import org.springframework.web.multipart.MultipartFile

@Transactional
class BookService {

    def serviceMethod() {

    }

    def uploadFile(MultipartFile file, String name, String destinationDirectory ) {

        def serveltContext = ServletContextHolder.servletContext
        def storagePath = serveltContext.getRealPath( destinationDirectory )

        def storagePathDirectory = new File( storagePath )

        if( !storagePathDirectory.exists() ){
            println("creating directory ${storagePath}")
            if(storagePathDirectory.mkdirs()){
                println "SUCCESS"
            }else{
                println "FAILED"
            }
        }


        if(!file.isEmpty()){
            file.transferTo( new File("${storagePath}/${name}") )
            println("Saved File: ${storagePath}/${name}")
            return true
        }else{
            println "File: ${file.inspect()} was empty"
            return false
        }
    }
}
