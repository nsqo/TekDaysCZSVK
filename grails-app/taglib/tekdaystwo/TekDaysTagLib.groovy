package tekdaystwo

class TekDaysTagLib {

	def backwards = { attrs, body -> out << body().reserve() }

	def messageThread = {
		attrs ->
		def messages = attrs.messages.findAll{msg -> !msg.parent}
		processMessages(messages, 1)
	}

	void processMessages(messages, indent){
		messages.each{msg ->

			def body = "${msg?.author} - ${msg?.subject}"
			out << "<div style='height:1.5em; margin-left:${indent * 3};'>"
			out << "${remoteLink(action:'showDetail', id:msg.id, update:'details', body)}"
			out << "</div>"

			def children = Message.findAllByParent(msg)
			if (children){
				processMessages(children, indent + 1)
			}
		}
	}
	
	def loginToggle = {
		out << "<div class='logintgl'>"
		if(session.user){
			out << "<span style='float:right;'>"
			out << "Welcome ${session.user}."
			out << "<a href='${createLink(controller:'tekUser',action:'logout')}' style='margin-left:0.5em;'>"
			out << "  Logout </a></span>"
		}
		else{
			out << "<span style='float: right;'>"
			out << "<a href='${createLink(controller:'tekUser',action:'login')}'>"
			out << "Login </a></span>"
		}
		out << "</div><br/>"
	}
}
