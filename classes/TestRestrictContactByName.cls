@isTest
public class TestRestrictContactByName {
    
    @isTest static void testCn(){
        Contact cnt = new Contact(LastName='prova');
        List<Contact> lcn= new List<Contact> ();
        lcn.add(cnt);
        Test.startTest();
        insert cnt;
        Test.stopTest();      
    }
    
}