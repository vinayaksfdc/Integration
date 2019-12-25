public class Std_4 {
    public Map<String,Object> resMap{set;get;}
    public Std_4(){
    
    String jsonString='{"name":"satish","city":"Hyderabad","salary"="40000"}';
        resMap=  (Map<String,Object>)system.json.deserializeUntyped(jsonString);
        
        
    }
    
}