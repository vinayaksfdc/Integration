public class ex {
    public string num{set;get;}
    public string a{set;get;}
       public string b{set;get;}
       public string c{set;get;}
       public string d{set;get;}
       public void n1()
       {
          a='1' ;
       }
    public void n2()
       {
           b='2';
       }
    public void n3()
       {
           c='3';
               
       }
    public void n4()
       {
           d='4';
       }
    
    public void res(){
        num=a+b+c+d;
        system.debug('value is'+num);
    }
}