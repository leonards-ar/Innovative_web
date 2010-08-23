<%@ page contentType="text/html"%>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html">
    <title>Innovative Medicines</title>
  </head>
  <body>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
      <tbody>
        <tr>
          <td align="center" bgcolor="#ffffff" valign="top"><table border="0" cellpadding="0" cellspacing="0" width="600">
              <tbody>
                <tr align="center">
                  <td bgcolor="#ffffff" height="400" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                      <tr>
                        <td colspan="4" class="texch"><g:message code="webuser.newuserregistration" default="New User Notification"/><td>
                        </tr>
                        <tr>
                          <td colspan="4">&nbsp;</td>
                        </tr>
                      <tr>
                        <td colspan="4" class="texch"><g:message code="webuser.data" default="User Data"/></td>
                      </tr>
                      <tr>
                        <td valign="top" class="name"><g:message code="webuser.name" default="Name"/>:</td>
                        <td  valign="top" class="value">${fieldValue(bean: webUser, field: "name")}</td>
                        <td valign="top" class="name"><g:message code="webuser.surname" default="Surname"/>:</td>
                        <td  valign="top" class="value">${fieldValue(bean: webUser, field: "surname")}</td>
                      </tr>
                      <tr>
                        <td valign="top" class="name"><g:message code="webuser.email" default="Email"/>:</td>
                        <td  valign="top" class="value">${fieldValue(bean: webUser, field: "email")}</td>
                        <td valign="top" class="name"><g:message code="webuser.phone" default="Phone"/>:</td>
                        <td  valign="top" class="value">${fieldValue(bean: webUser, field: "phone")}</td>
                      </tr>
                      <tr>
                        <td valign="top" class="name"><g:message code="webuser.occupation" default="Occupation"/>:</td>
                        <td  valign="top" class="value">${fieldValue(bean: webUser, field: "occupation")}</td>
                        <td valign="top" class="name"><g:message code="webuser.speciality" default="Speciality"/>:</td>
                        <td  valign="top" class="value">${fieldValue(bean: webUser, field: "speciality")}</td>
                    </tr>
                    <tr>
                      <td valign="top" class="name"><g:message code="webuser.medicalcentre" default="Medical Centre"/>:</td>
                      <td  valign="top" class="value">${fieldValue(bean: webUser, field: "medicalCentre")}</td>
                      <td valign="top" class="name"><g:message code="webuser.interests" default="Interests"/>:</td>
                      <td  valign="top" class="value">${fieldValue(bean: webUser, field: "interests")}</td>
                    </tr>
                    <tr>
                        <td valign="top" class="name"><g:message code="webuser.country" default="Country"/>:</td>
                        <td  valign="top" class="value">${fieldValue(bean: webUser, field: "country")}</td>
                        <td valign="top" class="name"><g:message code="webuser.creationdate" default="Creation Date"/>:</td>
                        <td  valign="top" class="value">${fieldValue(bean: webUser, field: "creationDate")}</td>
                    </tr>
                  </table>
                </td>
              </tr>
            </tbody>
          </td>
        </tr>
      </tbody>
    </table>
  </body>
</html>
