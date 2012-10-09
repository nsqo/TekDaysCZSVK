package tekdaystwo

class Sponsor {
	
	String name
	String website
	String description
	byte[] logo
	static hasMany = [events: TekEvent, sponsorships:Sponsorship]
	static belongsTo = TekEvent
	
	String toString() { name }

    static constraints = {
		name(blank:false)
		website(url:true,blank:false)
		description(nullable:true, maxSize:5000)
		logo(nullable:true, maxSize:1000000)
		sponsorships(nullable:true)
    }
}
