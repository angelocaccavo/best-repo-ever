/**
 * Created by a846761 on 2/16/2022.
 */

public with sharing class ContactsListWithController {
    private String sortOrder = 'LastName';
    public List<Contact> getPippos() {
        List<Contact> results = Database.query(
                'SELECT Id, FirstName, LastName, Title, Email ' +
                        'FROM Contact ' +
                        'ORDER BY ' + sortOrder + ' ASC ' +
                        'LIMIT 10'
        );
        return results;
    }
    public void sortByLastName() {
        this.sortOrder = 'LastName';
    }
    public void sortByFirstName() {
        this.sortOrder = 'FirstName';
    }
}