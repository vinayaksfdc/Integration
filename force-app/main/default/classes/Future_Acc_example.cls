public class Future_Acc_example {
    @future(callout=true)
    public static void invoke(Set<Id> Accs){
        List<Account> accounts=[select id,pincode__C from Account where id in: Accs];
        for(Account a : accounts)
        {
            Http p=new Http();
            HttpRequest request=new HttpRequest();
            String Endpoint='http://postalpincode.in/api/postoffice/'+a.Places__c;
            system.debug('endpoint is'+Endpoint);
            request.setEndpoint(endpoint);
            request.setMethod('GET');
            system.debug('request is '+request);
            HttpResponse response=p.send(request);
            If(response.getStatusCode() == 301 || response.getStatusCode() == 302)
            {    
                request.setEndpoint(response.getHeader('Location'));
                response = new Http().send(request);
                system.debug('response is '+response);
            }
            
            String result=response.getBody();
            System.JSONParser jp=json.createParser(result);
            while(jp.nextToken()!=null)
            {
                if(jp.getText()=='pincode') 
                {
                    jp.nextToken();
                    String pincode=jp.getText();
                    a.pincode__c=pincode;
                }
            }    
             
        }
       update accounts;
    }
}