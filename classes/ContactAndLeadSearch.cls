public class ContactAndLeadSearch {

    public static List<List< SObject>> searchContactsAndLeads(string incoming){
        List<List< SObject>> searchList = [FIND :incoming IN ALL FIELDS 
                   RETURNING Contact(firstname,lastname),Lead(FirstName,LastName)];
        
        return searchList;
    }
}