public class Json_ex1 {
    public Json_ex1(){
        Account acc = new Account(Name = 'Account Name', Phone = '8888888888', Industry = 'Agriculture');
         //Code to convert Account to JSON string
        String str = JSON.serialize(acc);
        system.debug('Account JSON Data - ' + str);
        //Code to convert JSON string to Account
        Account acc1 = (Account)JSON.deserialize(str, Account.Class);
        system.debug('Account Data - ' + acc1);
    }
}