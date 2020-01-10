public class DogFinder {
    public static String getMyDog(String id) {
        Http http = new Http();
HttpRequest request = new HttpRequest();
request.setEndpoint('https://dog.ceo/api/breeds/image/random');
request.setMethod('GET');
String strResp = '';
String petName = '';
HttpResponse response = http.send(request);
// If the request is successful, parse the JSON response.
if (response.getStatusCode() == 200) {
    // Deserialize the JSON string into collections of primitive data types.
    Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
    // Cast the values in the 'animals' key as a list
    System.debug('Received the following animals:' + results);
    strResp = string.valueof(results.get('message'));
    System.debug('strResp >>>>' + strResp);
    petName = strResp.substringBetween('/breeds/','/');
    System.debug('My new pet is called ' + petName);
}
	Pet__c newPet = new Pet__c(Name = 'Our new '+ petName, Household__c = Id, Image_URL__c = strResp);
		Insert newPet;

	return strResp;        
    }
}