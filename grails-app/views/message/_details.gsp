
<div id="show-message" class="content scaffold-show" role="main">
	<g:if test="${flash.message}">
		<div class="message" role="status">
			${flash.message}
		</div>
	</g:if>
	<ol class="property-list message">

		<g:if test="${messageInstance?.subject}">
			<li class="fieldcontain"><span id="subject-label"
				class="property-label"><g:message
						code="message.subject.label" default="Subject" /></span> <span
				class="property-value" aria-labelledby="subject-label"><g:fieldValue
						bean="${messageInstance}" field="subject" /></span></li>
		</g:if>

		<g:if test="${messageInstance?.content}">
			<li class="fieldcontain"><span id="content-label"
				class="property-label"><g:message
						code="message.content.label" default="Content" /></span> <span
				class="property-value" aria-labelledby="content-label"><g:fieldValue
						bean="${messageInstance}" field="content" /></span></li>
		</g:if>

		<g:if test="${messageInstance?.author}">
			<li class="fieldcontain"><span id="author-label"
				class="property-label"><g:message code="message.author.label"
						default="Author" /></span> <span class="property-value"
				aria-labelledby="author-label"><g:link controller="tekUser"
						action="show" id="${messageInstance?.author?.id}">
						${messageInstance?.author?.encodeAsHTML()}
					</g:link></span></li>
		</g:if>

	</ol>
	<g:form>
		<fieldset class="buttons">
			<g:link class="create" action="reply" id="${messageInstance?.id}">Reply</g:link>
		</fieldset>
	</g:form>
</div>