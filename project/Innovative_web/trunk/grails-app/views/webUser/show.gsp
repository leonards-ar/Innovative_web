
<%@ page import="com.innovative.web.WebUser" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="stylesheet" href="${resource(dir:'css',file:'lightbox.css')}" />
        <g:javascript library="prototype" />
        <g:javascript library="scriptaculous" />
        <g:javascript library="lightbox"/>
        <title><g:message code="webuser.show.label" default="Registered User Detail Information" /></title>
    </head>
    <body>
       
        <div class="body">
          <div class="welcomebox">
            <g:link action="#" class="lbAction" rel="deactivate" style="align:right;"><g:message code="default.close" default="Close"/></g:link>
          </div>

            <h1><g:message code="webuser.show.label" default="Registered User Detail Information"/></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="webUser.email.label" default="Email" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: webUserInstance, field: "email")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="webUser.password.label" default="Password" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: webUserInstance, field: "password")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="webUser.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: webUserInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="webUser.surname.label" default="Surname" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: webUserInstance, field: "surname")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="webUser.occupation.label" default="Occupation" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: webUserInstance, field: "occupation")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="webUser.country.label" default="Country" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: webUserInstance, field: "country")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="webUser.phone.label" default="Phone" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: webUserInstance, field: "phone")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="webUser.creationDate.label" default="Creation Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${webUserInstance?.creationDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="webUser.interests.label" default="Interests" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: webUserInstance, field: "interests")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="webUser.speciality.label" default="Speciality" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: webUserInstance, field: "speciality")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="webUser.medicalCentre.label" default="Medical Centre" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: webUserInstance, field: "medicalCentre")}</td>
                            
                        </tr>
                    
                    
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
