public class JSON_Example_1 {
   public  Account acc {set;get;}
    public String url;
    public JSON_Example_1(){
        acc=new Account();
        url='http://postalpincode.in/api/pincode/';
    }
    public void invoke(){ 
        try{
            
            Http p=new Http();
            HttpRequest request =new HttpRequest();
           url=url+acc.pincode__c;
            request.setEndPoint(url);
            request.setMethod('GET');
            HttpResponse response =p.send(request);
            String jsonString=response.getBody();
            system.debug('String value is '+jsonString);
            System.JSONParser jp=JSON.createParser(jsonString);
            String places='';
            while(jp.nextToken()!=null){
                if(jp.getText()=='Name'){
                    jp.nextToken();
                   
                    places =places+','+jp.getText();
                     System.debug('getText() value is '+jp.getText());
                     System.debug('jp.nextToken() value is '+jp.nextToken());
                    system.debug('places value is '+places);
                    system.debug('jp.getText() value is '+jp.getText());
                }
            }
            acc.Places__c=places;
            
            /*insert acc;
            PageReference p1=new PageReference('/'+acc.Id);
            return p1; */
        }catch(Exception e){
            /* Database.rollback(sp); */
            Apexpages.Message msg=new Apexpages.Message(Apexpages.Severity.Error,e.getMessage());
            Apexpages.addMessage(msg);
          
        }
    }
}