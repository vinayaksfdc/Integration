public class Json_ex2 {
    public List<account> accList{set;get;}
    public string str{set;get;}
    
    public void send1()
    {
        List<account> accs=new List<account>();
         Account acc = new Account(Name = 'Account Name', Phone = '8888888888', Industry = 'Agriculture');
        accs.add(acc);	
         Account acc1 = new Account(Name = 'Account Name1', Phone = '111111111', Industry = 'Agriculture');
        accs.add(acc1);	
         Account acc2 = new Account(Name = 'Account Name2', Phone = '2222222', Industry = 'Agriculture');
        accs.add(acc2);	
         Account acc3 = new Account(Name = 'Account Name3', Phone = '222222222', Industry = 'Agriculture');
        accs.add(acc3);	
       //Code to convert Account to JSON string
        String str = JSON.serialize(accs);
        system.debug('Account JSON Data - ' + str);
        //Code to convert JSON string to Account
        accList=(List<account>)System.JSON.deserialize(str, List<account>.class);
         system.debug('accList is - ' + accList);
        
        for(Account a: accList)
        {
            system.debug('name is'+a.name);
            system.debug('Phone is'+a.Phone);
            system.debug('Industry is'+a.Industry);
        }
 		insert acclist;

    }
}