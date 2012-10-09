
<%@ page import="tekdaystwo.Message" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'message.label', default: 'Message')}" />
		<g:javascript library="jquery" />
		<title>Messages</title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create" params='["event.id":"${event?.id}"]'><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div class="body">
			<div class="forumbody">
			<h1>${event?.name} - Forum Messages</h1>
				<div id="messageList">
					<g:messageThread messages="${messageInstanceList}" />
				</div>
			<h3>Message Details</h3>
			</div>
			<div id="details">
      		</div>  
		</div>
	</body>
</html>
