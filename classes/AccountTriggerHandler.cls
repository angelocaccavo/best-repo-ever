public with sharing class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> accts) {
//prova
        for (Account a : accts) {
            a.ShippingState = a.BillingState;

        }
    }
}