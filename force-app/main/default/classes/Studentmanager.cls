@RestResource(urlMapping='/v1/Studentmanagemnt/*')
global with Sharing class Studentmanager {
@HTTPGET
    global static Account doGetStudent(){
        Account acc=new Account();
        Map<string,string> mp=RestContext.request.params;
        system.debug('Mp value is'+mp);
        string AccId=mp.get('Id');
        acc=[select id,name,phone,industry,rating from account where id=:AccId];
        return acc;
        
    }
    @HTTPPost
    global static Account doCreateStudent(String name,String phone){
         Account acc=new Account();
        acc.name=name;
        acc.Phone=phone;
        insert acc;
        return acc;
    }
    
    global static void doUpdateStudent(){
        
    }
    
    
}