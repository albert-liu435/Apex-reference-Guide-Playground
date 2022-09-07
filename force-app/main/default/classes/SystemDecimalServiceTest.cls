@Istest
private class SystemDecimalServiceTest {
    public SystemDecimalServiceTest() {

    }


    
  static testMethod void abs() {
    Test.startTest();

    Decimal myDecimal = -6.02214129;
    System.assertEquals(6.02214129, SystemDecimalService.abs(myDecimal));
    // Integer myInt = SystemDecimalService.abs('123');

    Test.stopTest();
  }

}
