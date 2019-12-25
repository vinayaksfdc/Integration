public class jsond {
    public string stdvalue{set;get;}
    public account acc{set;get;}
    public string accvalue{set;get;}
   public jsond()
   {
       Account acc=new Account(name='raj',phone='1234');
      accvalue=json.serializePretty(acc);
       
        std s1=new std('raj','1234',123);
      stdvalue=json.serializePretty(s1);
   }
}