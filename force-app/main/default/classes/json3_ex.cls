public class json3_ex {
    public string name {set;get;}
    public string phone{set;get;}
    public string industry {set;get;}
    public string jsonString{set;get;}
    public string result {set;get;}
    public  json3_ex()
        {
            
           system.JSONGenerator gen=json.createGenerator(true);
            gen.writeStartObject();
            Account acc=new Account();
                try{
                acc.Name=name;
                acc.Industry=Industry;
                acc.Phone=phone;
                insert acc;
                gen.writeStringField('status', 'success');
                gen.writeIdField('id',acc.id);    
                }
                catch(Exception E)
                {
                     gen.writeStringField('failure', 'E.getMessage');
                }  
                        
                gen.writeEndObject();
            result=gen.getAsString();
                   
            
            
            
        
        }
}