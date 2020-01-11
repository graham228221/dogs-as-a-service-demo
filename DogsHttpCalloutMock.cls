global class DogsHttpCalloutMock implements HttpCalloutMock {
    global HTTPResponse respond(HTTPRequest req) {
        // Optionally, only send a mock response for a specific endpoint
        // and method.
        System.assertEquals('https://dog.ceo/api/breeds/image/random', req.getEndpoint());
        System.assertEquals('GET', req.getMethod());
        
        // Create a fake response
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody('{"message": "https://images.dog.ceo/breeds/schipperke/n02104365_10247.jpg","status": "success"}');
        res.setStatusCode(200);
        return res;
    }
}