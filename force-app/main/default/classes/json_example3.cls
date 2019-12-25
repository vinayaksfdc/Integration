public class json_example3 {
public string jsonString {set;get;}
    public json_example3(){
JSONGenerator gen = JSON.createGenerator(true);
    gen.writeStartObject();
   	gen.writeFieldName('Name');
    gen.writeNumber(10000);
    gen.writeNumberField('salary', 10000);    
    gen.writeEndObject();   
   jsonString=gen.getAsString();    
        }
}