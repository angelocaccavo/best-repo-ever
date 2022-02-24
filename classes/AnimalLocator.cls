/**
 * Created by a846761 on 2/23/2022.
 */

public with sharing class AnimalLocator {

    public static string getAnimalNameById(Integer anId) {
        String strResp = '';
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + anId);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) {
            // Deserializes the JSON string into collections of primitive data types.
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            // Cast the values in the 'animals' key as a list
            Map<String, Object> anMap = (Map<String, Object>) results.get('animal');
            strResp = string.valueof(anMap.get('name'));
        }
        return strResp;
    }

}