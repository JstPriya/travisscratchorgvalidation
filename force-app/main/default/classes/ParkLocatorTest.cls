@isTest
public class ParkLocatorTest {
    @isTest static void testCallOut(){
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        String s='India';
        String[] st =ParkLocator.country(s);
        System.debug(st);
    }
}