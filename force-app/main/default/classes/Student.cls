public class Student {
    public String name {set;get;}
    public String branch{set;get;}
    public String city{set;get;}
    public String phone{set;get;}
    public Student(String name,String city,String phone){
        this.name=name;
        this.city=city;
        this.phone=phone;
    }
    public Student(){
        
    }
}