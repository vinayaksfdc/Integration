public class HttpExample {
    public string result{set;get;}
    public string ipaddress{set;get;}
        public string status {set;get;}
        public integer statuscode{set;get;}
    public map<String,String> xmlMap{set;get;}
    public void submit()
    {
        HttpRequest request=new HttpRequest();
            request.setEndpoint('http://xml.utrace.ed/?query='+ipaddress);
        request.setMethod('GET');
        Http p=new Http();
        
    }
}