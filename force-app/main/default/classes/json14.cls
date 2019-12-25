public class json14 {

    public string json{set;get;}
    public list<result> result{set;get;}
   
    public class result
    {
        public string gender{set;get;}
        public Name name{set;get;}
        public location location{set;get;}
    }  
    public class name
    {
        public string title{set;get;}
        public string first{set;get;}
        public string last{set;get;}
    }  
       public class location
    {
        public string street{set;get;}
        public string city{set;get;}
        public string state{set;get;}
        public string postcode{set;get;}
    } 
    
     public json14()
		{
            json='{"results":[{"gender":"female","name":{"title":"ms","first":"paige","last":"patel"},"location":{"street":"4596 avalon drive","city":"whangarei","state":"northland","postcode":51487,"coordinates":{"latitude":"64.7282","longitude":"54.5225"},"timezone":{"offset":"+5:30","description":"Bombay, Calcutta, Madras, New Delhi"}},"email":"paige.patel@example.com","login":{"uuid":"c9eb70f8-7619-40be-9efc-b1287945ae47","username":"smallpanda164","password":"zzzzz","salt":"yeKdT624","md5":"f3810eb2ab48cbbde30a681a4455eacd","sha1":"e49a00a69a247e1875765c2af0b6f3d1e85e9939","sha256":"970299647e844d53678f2e0c96f17efeafff050bc4fdf4e88f00065765efca50"},"dob":{"date":"1952-07-08T02:34:33Z","age":66},"registered":{"date":"2010-05-09T20:31:44Z","age":8},"phone":"(623)-692-4642","cell":"(754)-266-9443","id":{"name":"","value":null},"picture":{"large":"https://randomuser.me/api/portraits/women/46.jpg","medium":"https://randomuser.me/api/portraits/med/women/46.jpg","thumbnail":"https://randomuser.me/api/portraits/thumb/women/46.jpg"},"nat":"NZ"}],"info":{"seed":"e32d17ff1a9a7d24","results":1,"page":1,""version":"1.2"}}';
		
            
            
            
            
            
        }
    
}