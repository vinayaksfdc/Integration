public class JSON_Example_2 {
    public integer age{set;get;}
    public account acc{set;get;}
    public student std{set;get;}
    public student newstd{set;get;}
    public Map<string,object> resmap{set;get;}
    public JSON_Example_2(){
                String js1='{"Name":"Wipro","Industry":"Banking","Phone":"040-1234"}'; 
        age=(Integer)json.deserialize('10', Integer.class);
                    acc=(Account)JSON.deserialize(js1, Account.class);
        
        
    } 
   

}