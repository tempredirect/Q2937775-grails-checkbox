<%@ page import="q2937775.grails.checkbox.Person" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="layout" content="main"/>
  <g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}"/>
  <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>
<body>
<div class="nav">
  <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
  <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></span>
</div>
<div class="body">
  <h1><g:message code="default.create.label" args="[entityName]"/></h1>
  <g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
  </g:if>
  <g:hasErrors bean="${person}">
    <div class="errors">
      <g:renderErrors bean="${person}" as="list"/>
    </div>
  </g:hasErrors>
  <g:form action="handleForm" method="post">
    <div class="dialog">
      <table>
        <tbody>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="title"><g:message code="person.title.label" default="Title"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: person, field: 'title', 'errors')}">
            <g:textField name="title" value="${person?.title}"/>
          </td>
        </tr>
        <tr class="prop">
          <td valign="top" class="name">
            <label for="groups[0].title">Group</label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: person, field: 'group[0].title', 'errors')}">
            <g:textField name="groups[0].title" value="${person.groups[0]?.title}"/>
          </td>
        </tr>
        <tr class="prop">
          <td valign="top" class="name">
            <label for="groups[0].isHidden">Hidden</label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: person, field: 'group[0].hidden', 'errors')}">
            <input type="checkbox" name="groups[0].isHidden" <g:if test="${person.groups[0]?.isHidden}">checked="checked"</g:if>/>
            <input type="hidden" name="groups[0]._isHidden"/>
          </td>
        </tr>

        </tbody>
      </table>
    </div>
    <div class="buttons">
      <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}"/></span>
    </div>
  </g:form>
</div>
</body>
</html>