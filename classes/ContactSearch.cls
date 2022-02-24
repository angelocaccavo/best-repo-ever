public class ContactSearch {
    public static list<Contact> searchForContacts(string lName, string mPostal){
        List<Contact> c = [Select Id,Name from Contact where lastName =: lName and MailingPostalCode =:mPostal];
        
        
        return c;
    }
}