@Istest
private class SystemIDServiceTest {
	// public SystemIDServiceTest() {

	// }

	  static testMethod void getSObjectType() {

		    Test.startTest();

    // Integer myInt = SystemIntegerService.valueOf('123');
			account a = new account(name = 'account');
			insert a;
			Id myId = a.id;

			// Schema.SObjectTyp sObjectTyp=myId.getSobjectType();
			System.debug(myId.getSobjectType());
			system.assertEquals(Schema.Account.SObjectType, myId.getSobjectType());

    		Test.stopTest();

	  }
}
