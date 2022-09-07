@isTest
private class SystemLongServiceTest {



static testmethod void format() {
	Test.startTest();

	Long myLong = 4271990;
	system.assertEquals('4,271,990', SystemLongService.format(myLong));


	Test.stopTest();
}



static testmethod void intValue() {
	Test.startTest();

	Long myLong = 7191991;
	Integer value = myLong.intValue();
	system.assertEquals(7191991, SystemLongService.intValue(myLong));


	Test.stopTest();
}


//  static testMethod void format() {
//     Test.startTest();
//     integer myInt = 22;
//     system.assertEquals('22', SystemIntegerService.format(myInt));


//     Test.stopTest();
// }

//     static testMethod void valueOf() {
//     Test.startTest();

//     Integer myInt = SystemIntegerService.valueOf('123');

//     Test.stopTest();
// }

//     static testMethod void valueOf2() {
//     Test.startTest();

//      Integer myInt = SystemIntegerService.valueOf2('123');
//      System.debug('测试:'+myInt);

//     Test.stopTest();
// }


}