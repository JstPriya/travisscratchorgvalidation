@isTest
public class AnimalLocatorTest {
    @isTest static void AnimalLocatorMock() {
    // Set mock callout class 
    Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock()); 
    // This causes a fake response to be sent
    // from the class that implements HttpCalloutMock. 
    String name = AnimalLocator.getAnimalNameById(0);
    // Verify that the response received contains fake values
    System.debug(name);
}
}