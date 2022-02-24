@isTest
public class TestVerifyDate {

    @isTest
    static void CheckDatesT1(){
        Date date1 = date.newInstance(1990, 11, 21);
        Date date2 = date.newInstance(1990, 11, 22);
        Date d3 = VerifyDate.CheckDates(date1, date2);
        
    }
    @isTest
    static void CheckDatesT2(){
        Date date1 = date.newInstance(1991, 11, 21);
        Date date2 = date.newInstance(1990, 11, 22);
        Date d3 = VerifyDate.CheckDates(date1, date2);
        
    }    
}