<%@ page import="tekdaystwo.Message"%>

<g:if test="${messageInstance.parent}">
<div class="fieldcontain ${hasErrors(bean: messageInstance, field: 'subject', 'error')} required">
	
	<div class="hidden">
		<g:textField type="hidden" name="parent.id"
			value="${messageInstance.parent.id}" />
	</div>
	<tr class="prop">
		<td valign="top" class="name"><label>In Reply to:</label></td>
		<td valign="top" class="value">
			${messageInstance.parent.author}
		</td>
	</tr>
</div>
</g:if>

<div
	class="fieldcontain ${hasErrors(bean: messageInstance, field: 'subject', 'error')} required">
	<label for="subject"> <g:message code="message.subject.label"
			default="Subject" /> <span class="required-indicator">*</span>
	</label>
	<g:textField name="subject" required=""
		value="${messageInstance?.subject}" />
</div>

<div
	class="fieldcontain ${hasErrors(bean: messageInstance, field: 'content', 'error')} required">
	<label for="content"> <g:message code="message.content.label"
			default="Content" /> <span class="required-indicator">*</span>
	</label>
	<g:textArea name="content" cols="60" rows="5" maxlength="2000"
		required="" value="${messageInstance?.content}" />
</div>

<div
	class="fieldcontain ${hasErrors(bean: messageInstance, field: 'author', 'error')} required">
	<label for="author"> <g:message code="message.author.label"
			default="Author" /> <span class="required-indicator">*</span>
	</label>
	<g:select id="author" name="author.id"
		from="${tekdaystwo.TekUser.list()}" optionKey="id" required=""
		value="${messageInstance?.author?.id}" class="many-to-one" />
</div>

<div
	class="fieldcontain ${hasErrors(bean: messageInstance, field: 'event', 'error') } required">
	<label class="hidden" for="event"> <g:message
			code="message.event.label" default="Event" /> <span
		class="required-indicator hidden">*</span>
	</label>
	<g:select id="event" name="event.id"
		from="${tekdaystwo.TekEvent.list()}" optionKey="id" required=""
		value="${messageInstance?.event?.id}" class="many-to-one hidden" />
</div>

