@isTest
private class SystemIntegerServiceTest {
  static testMethod void format() {
    Test.startTest();
    integer myInt = 22;
    system.assertEquals('22', SystemIntegerService.format(myInt));

    Test.stopTest();
  }

  static testMethod void valueOf() {
    Test.startTest();

    Integer myInt = SystemIntegerService.valueOf('123');

    Test.stopTest();
  }

  static testMethod void valueOf2() {
    Test.startTest();

    Integer myInt = SystemIntegerService.valueOf2('123');
    System.debug('测试:' + myInt);

    Test.stopTest();
  }

  // static testMethod void getPicklistValues() {
  //     // Test.startTest();
  //     // // List<ID> ids= new ID[]{'0012800000Hz6ozAAB','0012800000Hz6oxAAB'};
  //     // // QueueableSample sample = new QueueableSample(ids);
  //     // // ID jobID = System.enqueueJob(sample);
  //     // Map<String,object> educationValues = PickListValuesUtil.getPicklistValues('Student__c','Education__c');
  //     // System.debug(educationValues);
  //     // Test.stopTest();
  // }
}
