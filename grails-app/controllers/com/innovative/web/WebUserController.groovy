package com.innovative.web

class WebUserController {

    def mailService
    
    def save = {
        def webUserInstance = new WebUser(params)
        //response.setHeader('Access-Control-Allow-Origin', '*')
        webUserInstance.creationDate = new Date();
        if(!webUserInstance.hasErrors() && webUserInstance.save()) {
            sendNotification(webUserInstance)
            render 'jsonHandler({"result":"true"})'
        }
        else {
            render 'jsonHandler({"result":"false"})'
        }
    }

    def seeMail = {
        render(view:"/emails/registrationWelcome")
    }

    def login = {LoginCommand cmd ->
        WebUser user = cmd.getUser()
        //response.setHeader('Access-Control-Allow-Origin', '*')
        if (user){
            render 'jsonHandler({"result":"true"})'
        }else{
            render 'jsonHandler({"result":"false"})'
        }
    }

    private sendNotification(WebUser webUser) {

        def userMail = webUser.getEmail()

        if(userMail != null) {
            try{
                mailService.sendMail {
                    from grailsApplication.config.application.from
                    to userMail
                    subject "Bienvenido a Innovative Medicines"
                    body (view:"/emails/registrationWelcome", model:[webUser:webUser])
                }

                
                mailService.sendMail {
                    from grailsApplication.config.application.from
                    to grailsApplication.config.application.addressee
                    subject "Aviso de notificación de un nuevo usuario"
                    body (view:"/emails/registrationNotification", model:[webUser:webUser])
                }

                return true;
            } catch(Exception e) {
                log.error "Problem sending email $e.message", e
                return false;
            }
        } else {
            log.error "There is no email for ${webUser}"
            return false;
        }

    }

}

class LoginCommand {
    String username
    String password

    WebUser getUser(){
        if (username && password){
            return WebUser.findByEmailAndPassword(username, password)
        }
    }
}
