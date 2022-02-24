public class RandomContactFactory {

    public static List<Contact> generateRandomContacts (Integer nContact, string lsName){
        List<Contact> outContact = new List<Contact>();
        for(integer i = 0; i<nContact; i++){
            Contact c = new Contact();
            c.LastName = lsName;
            c.FirstName = 'Test ' + (i+1);
            outContact.add(c);
        }
        insert outContact;
        
        return outContact;
    }
}