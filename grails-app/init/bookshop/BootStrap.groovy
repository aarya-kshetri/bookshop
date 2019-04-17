package bookshop

import com.bookshop.Role
import com.bookshop.User
import com.bookshop.UserRole

class BootStrap {

    def init = { servletContext ->
        /*def admin=new User(username: 'admin',password: 'admin')
        admin.save()

        def user = new User(username: 'aarya',password: 'aarya')
        user.save()

        def adminRole = new Role(authority: 'ROLE_ADMIN')
        adminRole.save()

        def userRole = new Role(authority: 'ROLE_USER')
        userRole.save()

        UserRole.create(user,userRole,true)
        UserRole.create(admin,adminRole,true)*/
    }
    def destroy = {
    }
}
