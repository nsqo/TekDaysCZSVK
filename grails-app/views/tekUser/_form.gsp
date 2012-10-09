<%@ page import="tekdaystwo.TekUser" %>



<div class="fieldcontain ${hasErrors(bean: tekUserInstance, field: 'fullName', 'error')} required">
	<label for="fullName">
		<g:message code="tekUser.fullName.label" default="Full Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fullName" required="" value="${tekUserInstance?.fullName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tekUserInstance, field: 'userName', 'error')} ">
	<label for="userName">
		<g:message code="tekUser.userName.label" default="User Name" />
		
	</label>
	<g:textField name="userName" value="${tekUserInstance?.userName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tekUserInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="tekUser.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${tekUserInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tekUserInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="tekUser.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${tekUserInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tekUserInstance, field: 'website', 'error')} ">
	<label for="website">
		<g:message code="tekUser.website.label" default="Website" />
		
	</label>
	<g:field type="url" name="website" value="${tekUserInstance?.website}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tekUserInstance, field: 'bio', 'error')} ">
	<label for="bio">
		<g:message code="tekUser.bio.label" default="Bio" />
		
	</label>
	<g:textArea name="bio" cols="40" rows="5" maxlength="5000" value="${tekUserInstance?.bio}"/>
</div>

