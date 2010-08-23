package com.innovative.web

class WebUser {
    
    String name
    String surname
    String email
    String password
    String confirmation
    
    String occupation
    String speciality
    String phone
    String medicalCentre
    String country
    String interests
    Date creationDate

    static transients = ['confirmation']
    
    static constraints = {
        email(email:true, unique:true)
        password(blank:false, validator:{val, obj->
            if(!(val?.equals(obj.confirmation))){
                return false;
            }
        })
        name(blank:false)
        surname(blank:false)
        occupation(blank:false)
        country(blank:false)
    }

    String toString(){
        return "${this.name} ${this.surname}"
    }
}
