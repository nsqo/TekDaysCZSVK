package tekdaystwo



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(TekEvent)
class TekEventTests {

     void testToString(){
		def tekEvent = new TekEvent( name: 'Groovy One',
									 city: 'San Francisco, CA',
									 organizer: [fullName:'John Doe'] as TekUser,
									 venue: 'Moscone Center',
									 startDate: new Date('5/6/2012'),
									 endDate: new Date('5/6/2012'),
									 description: 'This conference will cover all')
		assertEquals 'Groovy One, San Francisco, CA', tekEvent.toString()
		
	}
}
