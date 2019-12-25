public class aura_contact {
	@auraEnabled
    public static List<contact> cont()
    {
        List<contact> cont=[select id,name,phone,email from contact limit 10];
        return cont;
        
        
    }   
}