/**
 * Created by a846761 on 2/16/2022.
 */

public with sharing class NewCaseListController {

    public List<Case> getNewCases(){
        List<Case> lc = new List<Case>();
        lc = [Select Id, CaseNumber from case where Status='New'];
        return lc;
    }
}