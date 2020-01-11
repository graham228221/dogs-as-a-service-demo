@isTest
public class DogFinderTest {
    
    public static testMethod void testDogController() {
                
        Account testAcc = new Account(Name = 'Test Account for Dogs');
        insert testAcc;
        
        test.StartTest();
        
        PageReference pageRef = Page.DogFinder;
        
        Test.setCurrentPage(pageRef);
        pageRef.getParameters().put('acc',testAcc.Id);
        
        //mock response based on static resource      
        DogFinderCons controller = new DogFinderCons(new ApexPages.StandardController(testAcc)); 
        Test.setMock(HttpCalloutMock.class, new DogsHttpCalloutMock());
        System.assertNotEquals(null,controller.findaDog());
        
        test.stopTest();
        
    }
        
        
        }