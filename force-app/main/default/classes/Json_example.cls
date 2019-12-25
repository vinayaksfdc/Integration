public class Json_example {
    public string accountresult{set;get;}
    public Json_example(){
        Account acc=new Account(name='tcs',industry='banking');
        accountresult=system.json.serializePretty(acc);
    }
}