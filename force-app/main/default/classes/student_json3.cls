public class student_json3 {
    Public Integer age{set;get;}
    public Decimal salary{set;get;}
    public student_ex std{set;get;}
    public student_json3()
    {
        age=(Integer)System.JSON.deserialize('10',Integer.class);
        String stud='{"name":"satish","branch":"CSE"}';
        std=(student_ex)json.deserialize(stud, student_ex.class);
	}
}