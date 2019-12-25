public class GetPerson {
    public String name {get;set;}
    public Integer age {get;set;}
    public Car car {get;set;}
    public String x_id {get;set;}
      public List<String> kids {get;set;}
    
    public class Car {
        public String model {get;set;}
        public String year {get;set;}
    }
    public GetPerson()
    {
        String input = '{"name":"paulo","age":42, "married":true, "car" : {"model" : "outlander", "year" : "2016"}}';
        GetPerson person = (GetPerson) JSON.deserialize(input, GetPerson.class);
        system.debug('person is'+person);
        Car car = (Car) JSON.deserialize(input, car.class);
        system.debug('Car is'+Car);
        
        Map<String, Object> o = (Map<String, Object>) JSON.deserializeUntyped(input);
        system.debug('name is '+o.get('name'));
        system.debug('age is '+o.get('age')); 
        Map<String, Object> car1 = (Map<String, Object>) o.get('car');
        system.debug('model is '+car1.get('model'));
        
        
        String input1 = '[{"name":"paulo","age":42, "car" : {"model" : "outlander", "year" : "2016"}}, {"name":"tin","age":40, "car" : {"model" : "crv", "year" : "2004"}}]';
        List<GetPerson> person1 = (List<GetPerson>) JSON.deserialize(input1, List<GetPerson>.class);
        system.assertEquals(person1.size(), 2);
        
        
    }
}