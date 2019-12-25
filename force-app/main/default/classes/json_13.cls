public class json_13 {
    public string nme{set;get;}
    public string phne{set;get;}
    public class Person {
        public String name;
    public String phone;
}
    public json_13()
    {
        String JSONContent =
    '{"person":{' + 
        '"name":"John Smith",' +
        '"phone":"555-1212"}}';
JSONParser parser = JSON.createParser(JSONContent);
// Make calls to nextToken() 
// to point to the second
// start object marker.
while(parser.nextToken()!=null)
{
    if(parser.getText()=='Name')
        {    
            parser.nextToken();
            parser.getText();
            system.debug('parser.getText()() is'+parser.getText());
        }

}
   
       system.debug(parser.nextToken());
// Retrieve the Person object
// from the JSON string.
Person obj =(Person)parser.readValueAs(Person.class);
  nme=obj.name;
   phne=obj.phone;
    }
    
    
}