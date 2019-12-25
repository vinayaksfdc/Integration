public class Httppostalcode
{
    Public String cityName {set;get;}
    Public String JsonString{set;get;}
    public string pincode{set;get;}
    
    public void callme()
    {
        Http p=new Http();
        HttpRequest request=new HttpRequest();
        String Endpoint='http://postalpincode.in/api/postoffice/'+cityName;
        system.debug('endpoint is'+Endpoint);
        request.setEndpoint(endpoint);
        request.setMethod('GET');
        system.debug('request is '+request);
        HttpResponse response=p.send(request);
        If(response.getStatusCode() == 301 || response.getStatusCode() == 302)
        {    
            request.setEndpoint(response.getHeader('Location'));
            response = new Http().send(request);
        }
        
        JsonString=response.getBody();
        system.debug('JsonString is '+JsonString);
        System.JSONParser jp=json.createParser(jsonString);
        while(jp.nextToken()!=null)
        {
            if(jp.getText()=='pincode') 
            {
                jp.nextToken();
                pincode=jp.getText();
            }
        }    
        
    }
    
    public class JsonParser{
        public String Status{get;set;}
        public list<PostOffice> PostOffice{get;set;}
        public String Message{get;set;}
    }
    public class PostOffice{
        public String District{get;set;}
        public String Circle{get;set;}
        public String Division{get;set;}
        public String DeliveryStatus{get;set;}
        public String Region{get;set;}
        public String BranchType{get;set;}
        public String State{get;set;}
        public String Description{get;set;}
        public String Country{get;set;}
        public String Name{get;set;}
        public String Pincode{get;set;}
    }
    
}