public class Accnt_class {
    public string name {set;get;}
    public string phone {set;get;}

    public string industry  {set;get;}
    public string jsonString {set;get;}
    public string result     {set;get;}
    public void create()
    {
           system.JSONGenerator gen=json.createGenerator(true);
            gen.writeStartObject();
        
           try{ 
            Account acc=new Account();
            acc.Name=name;
            acc.phone=name;
            
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