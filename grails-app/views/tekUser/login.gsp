<%@ page import="tekdaystwo.TekUser"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'tekUser.label', default: 'TekUser')}" />
<title>Login</title>
</head>
<body>
	<a href="#create-tekUser" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div id="create-tekUser" class="content scaffold-create" role="main">
		<h1>
			<g:message code="default.create.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<g:hasErrors bean="${tekUserInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${tekUserInstance}" var="error">
					<li
						<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
							error="${error}" /></li>
				</g:eachError>
			</ul>
		</g:hasErrors>
		<g:form action="save">
			<fieldset class="form">

				<div
					class="fieldcontain ${hasErrors(bean: tekUserInstance, field: 'userName', 'error')} ">
					<label for="userName"> <g:message
							code="tekUser.userName.label" default="User Name" />

					</label>
					<g:textField name="userName" value="${tekUserInstance?.userName}" />
				</div>

				<div
					class="fieldcontain ${hasErrors(bean: tekUserInstance, field: 'password', 'error')} required">
					<label for="password"> <g:message
							code="tekUser.password.label" default="Password" /> <span
						class="required-indicator">*</span>
					</label>
					<g:field type="password" name="password" required=""
						value="${tekUserInstance?.password}" />
				</div>

			</fieldset>
			<fieldset class="buttons">
				<g:submitButton name="login" class="save" value="Login" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>