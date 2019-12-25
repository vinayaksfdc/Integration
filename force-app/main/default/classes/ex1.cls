public class ex1 {
             public String jsonString {set;get;}
    public String[] names    {set;get;}
    public ex1(){
        jsonString ='{"Name":"Satish","Age":30,"cities":["Hyd","Ban","Che"]}';
        System.JSONParser jp=JSON.createParser(jsonString);
        while(jp.nextToken()!=null){
            if(jp.getText() =='cities'){
                jp.nextToken();
                names =(List<String>)jp.readValueAs(List<String>.class);
            }
        }
    }
}