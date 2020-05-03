public class AnimalLocator {
    public static String getAnimalNameById(Integer i){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+i);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        ///if (response.getStatusCode() == 200) {
            // Deserializes the JSON string into collections of primitive data types.
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            // Cast the values in the 'animals' key as a list
            System.debug(results);
            Map<String, Object> animal = (Map<String, Object>) results.get('animal');
            System.debug('Received the following animals:');
            System.debug(animal);
            String animalName=(String) animal.get('name');
            System.debug(animalName);
            return animalName;
       /* }
        else{
            String animalName=null;
        	return animalName;
        }*/
	}
}