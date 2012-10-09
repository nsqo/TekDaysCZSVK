package tekdaystwo

import static org.junit.Assert.*
import org.junit.*

class TaskServiceTests {

	def taskService 
	
    @Before
    void setUp() {
		new TekUser(fullName:'Tammy Tester',userName:'tester',email:'tester@test.com',
					website:'http://test.com',bio:'A test person').save()
	}

    @After
    void tearDown() {
        // Tear down logic here
    }

    @Test
    void testAddDefaultTasks() {
		def e = new TekEvent(name:'Test Event',city:'TestCity, SVK',
							 description:'Test Description',
							 organizer:TekUser.findByUserName('tester'),
							 venue:'TestCenter',
							 startDate: new Date(),endDate:new Date()+1,)
		taskService.addDefaultTasks(e)
		assertEquals e.tasks.size(), 6
	}
}
