package tekdaystwo

import groovy.transform.ToString;

class TekUser {
	
	String fullName
	String userName
	String password
	String email
	String website
	String bio

	String toString() {
		fullName	
	}
	
    static constraints = {
    	fullName(blank:false)
		userName(unique:true)
		password(password:true,blank:false)
		email(email:true)
		website(url:true)
		bio(maxSize:5000)
	}
}
