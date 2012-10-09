package tekdaystwo



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(TekUser)
class TekUserTests {

    void testToString(){
		def tekUser = new TekUser( fullName: 'John Doe',
									 userName: 'octopus',
									 password: 'password',
									 email: 'john@doe.com',
									 website: 'http://johndoe.com',
									 bio: 'something is in bio I do not know what')
		assertEquals 'John Doe', tekUser.toString()
		
	}
}
