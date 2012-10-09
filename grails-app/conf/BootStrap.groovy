import tekdaystwo.TekEvent
import tekdaystwo.TekUser
import tekdaystwo.Sponsor
import tekdaystwo.Sponsorship

class BootStrap {

    def init = { servletContext ->
		/**
		def u1 = new TekUser(fullName:'John Doe', userName:'johndoe',
			password:'password', email:'johndoe@gmail.com', website:'http://john.com',
			bio: '''Programmer for several years,programming in java and c++...''').save()
		def u2 = new TekUser(fullName:'Jan Novak', userName:'jannovak',
					password:'simplepass', email:'jannovak@gmail.com', website:'http://novak.com',
					bio: '''Programmer for 20 years,programming in php and .net...''').save()
		
		def event1 = new TekEvent(	name: 'Gateway Code Camp',
									city: 'Saint Louis, MO',
									organizer: u1,
									venue: 'TBD',
									startDate: new Date('9/19/2012'),
									endDate: new Date('9/19/2012'),
									description: '''This conference will bring
													coders from across platforms,
													languages,and industries together
													for an exciting day of tips,
														tricks and tech!
												'''
									)
		if(!event1.save()){
			event1.errors.allErrors.each{
				error->println "An Error occured with event 1:${error}"
			}
		}
		
		def event2 = new TekEvent(	name: 'Programming Seasson',
									city: 'Kosice, Slovakia',
									organizer: u2,
									venue: 'Hilton',
									startDate: new Date('9/29/2012'),
									endDate: new Date('9/30/2012'),
									description: '''This conference will bring
																			coders from across platforms,
																			languages,and industries together
																			for an exciting day of tips,
																			tricks and tech!
																		'''
									)
		
		if(!event2.save()){
			event2.errors.allErrors.each{
				error->println "An Error occured with event2:${error}"
			}
		}
		
		def g1 = TekEvent.findByName('Gateway Code Camp')
		g1.addToVolunteers(new TekUser(	fullName:'Sarah Martin', userName:'sarah',
										password:'password',email:'sarah@gmail.com',
										website:'http://sarah.com',
										bio:'Works as Manager in IT company...'))
		def g2 = TekEvent.findByName('Programming Seasson')
		g2.addToVolunteers(new TekUser(	fullName:'Bill Smith', userName:'billsmith',
										password:'password',email:'billsmith@gmail.com',
										website:'http://smith.com',
										bio:'Works as programmer in IT company...'))
		g1.addToRespondents('news@gmail.com')
		g1.addToRespondents('next@gmail.com')
		g1.addToRespondents('mustgo@nice.org')
		g1.save()
		g2.addToRespondents('phillcolls@gmail.com')
		g2.addToRespondents('sixsights@gmail.com')
		g2.addToRespondents('mustgo@nice.org')
		g2.save()
		def s1 = new Sponsor(name:'Intel',website:'http://intel.com',description:'cpu').save()
		def s2 = new Sponsor(name:'nvidia',website:'http://nvidia.com',description:'gpu').save()
		def sp1 = new Sponsorship(event:g1,sponsor:s1,contributionType:'Other',
									description:'T-shirts')
		def sp2 = new Sponsorship(event:g1,sponsor:s2,contributionType:'Venue',
									description:'Paying for space...')
		s1.addToSponsorships(sp1)
		s1.save()
		s2.addToSponsorships(sp2)
		s2.save()
		g1.addToSponsorships(sp1)
		g1.addToSponsorships(sp2)
		g1.save()
		**/
	}
    def destroy = {
    }
}
