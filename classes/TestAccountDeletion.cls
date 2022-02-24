@isTest
private class TestAccountDeletion {
    @isTest static void TestDeleteAccountWithOneOpportunity() {
        // Test data setup
        // Create an account with an opportunity, and then try to delete it
	//	Account[] accts = TestDataFactory.createAccountsWithOpps(1,1);
        Contact[] cc = RandomContactFactory.generateRandomContacts(2, 'Prova');
        // Perform test
        Test.startTest();
   //     Database.DeleteResult result = Database.delete(accts[0], false);
        Test.stopTest();
        // Verify 
        // In this case the deletion should have been stopped by the trigger,
        // so verify that we got back an error.
     //   System.assert(!result.isSuccess());
     //   System.assert(result.getErrors().size() > 0);
     //   System.assertEquals('Cannot delete account with related opportunities.',
      //                       result.getErrors()[0].getMessage());
    }
}