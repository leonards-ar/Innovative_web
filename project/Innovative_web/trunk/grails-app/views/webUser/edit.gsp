
<%@ page import="com.innovative.web.WebUser" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'webUser.label', default: 'WebUser')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${webUserInstance}">
            <div class="errors">
                <g:renderErrors bean="${webUserInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${webUserInstance?.id}" />
                <g:hiddenField name="version" value="${webUserInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="email"><g:message code="webUser.email.label" default="Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: webUserInstance, field: 'email', 'errors')}">
                                    <g:textField name="email" value="${webUserInstance?.email}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="password"><g:message code="webUser.password.label" default="Password" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: webUserInstance, field: 'password', 'errors')}">
                                    <g:textField name="password" value="${webUserInstance?.password}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="name"><g:message code="webUser.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: webUserInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${webUserInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="surname"><g:message code="webUser.surname.label" default="Surname" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: webUserInstance, field: 'surname', 'errors')}">
                                    <g:textField name="surname" value="${webUserInstance?.surname}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="occupation"><g:message code="webUser.occupation.label" default="Occupation" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: webUserInstance, field: 'occupation', 'errors')}">
                                    <g:textField name="occupation" value="${webUserInstance?.occupation}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="country"><g:message code="webUser.country.label" default="Country" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: webUserInstance, field: 'country', 'errors')}">
                                    <g:textField name="country" value="${webUserInstance?.country}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="phone"><g:message code="webUser.phone.label" default="Phone" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: webUserInstance, field: 'phone', 'errors')}">
                                    <g:textField name="phone" value="${webUserInstance?.phone}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="creationDate"><g:message code="webUser.creationDate.label" default="Creation Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: webUserInstance, field: 'creationDate', 'errors')}">
                                    <g:datePicker name="creationDate" precision="day" value="${webUserInstance?.creationDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="interests"><g:message code="webUser.interests.label" default="Interests" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: webUserInstance, field: 'interests', 'errors')}">
                                    <g:textField name="interests" value="${webUserInstance?.interests}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="speciality"><g:message code="webUser.speciality.label" default="Speciality" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: webUserInstance, field: 'speciality', 'errors')}">
                                    <g:textField name="speciality" value="${webUserInstance?.speciality}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="medicalCentre"><g:message code="webUser.medicalCentre.label" default="Medical Centre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: webUserInstance, field: 'medicalCentre', 'errors')}">
                                    <g:textField name="medicalCentre" value="${webUserInstance?.medicalCentre}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="confirmation"><g:message code="webUser.confirmation.label" default="Confirmation" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: webUserInstance, field: 'confirmation', 'errors')}">
                                    <g:textField name="confirmation" value="${webUserInstance?.confirmation}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
