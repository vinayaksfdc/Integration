public class json_example2 {
    public string result{set;get;}
	public string result1{set;get;}
    public json_example2(){
        
            student_ex std=new student_ex();
        	std.name='vinayak';
        	std.branch='bsc';
       		 result=system.json.serialize(std);
               result1=system.JSON.serialize(std,true);
			   
    }
}