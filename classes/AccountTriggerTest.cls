@isTest
public class AccountTriggerTest {

    @isTest
    static void testAcc(){
        // Create 200 new Accounts
        List<Account> accts = new List<Account>();
        for(Integer i=0; i < 200; i++) {
            Account acct = new Account();
            acct.Name = 'Name_'+i;
            acct.BillingState = 'CA';
            accts.add(acct);
        }               
        insert accts;
    }
}