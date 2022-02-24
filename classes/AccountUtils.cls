public class AccountUtils {

    public static list<Account> accountsByState(string billingState){
       List<Account> resultAcc = [select id, name from Account where BillingState  =:  billingState]; 
       return resultAcc;
    }
}