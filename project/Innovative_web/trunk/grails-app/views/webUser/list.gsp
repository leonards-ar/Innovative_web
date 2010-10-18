
<%@ page import="com.innovative.web.WebUser" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="webuser.list.label" default="Registered User List" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="stylesheet" href="${resource(dir:'css',file:'lightbox.css')}" />
        <g:javascript library="prototype" />
        <g:javascript library="scriptaculous" />
        <g:javascript library="lightbox"/>
    </head>
    <body>
        <div class="welcomeBox">
          <g:link controller="logout"><g:message code="logout"/></g:link>
        </div>
        <div class="body">
            <h1><g:message code="webuser.list.label" default="Registered User List" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
              <table border="1.5" width="100%">
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="name" title="${message(code: 'webuser.name', default: 'Name')}" />
                        
                            <g:sortableColumn property="surname" title="${message(code: 'webuser.surname', default: 'Surname')}" />

                            <g:sortableColumn property="email" title="${message(code: 'webuser.email', default: 'Email')}" />

                            <g:sortableColumn property="country" title="${message(code: 'webuser.country', default: 'Country')}" />
                        
                            <g:sortableColumn property="occupation" title="${message(code: 'webuser.occupation', default: 'Occupation')}" />

                            <g:sortableColumn property="creationDate" title="${message(code: 'webuser.creationDate', default: 'Registered Date')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${webUserInstanceList}" status="i" var="webUserInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link class="lbOn" action="show" id="${webUserInstance.id}">${fieldValue(bean: webUserInstance, field: "name")}</g:link></td>
                        
                            <td>${fieldValue(bean: webUserInstance, field: "surname")}</td>

                            <td>${fieldValue(bean: webUserInstance, field: "email")}</td>

                            <td>${fieldValue(bean: webUserInstance, field: "country")}</td>
                        
                            <td>${fieldValue(bean: webUserInstance, field: "occupation")}</td>

                            <td>${fieldValue(bean: webUserInstance, field: "creationDate")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${webUserInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
