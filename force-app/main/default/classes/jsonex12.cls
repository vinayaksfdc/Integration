public class jsonex12 {
    public string jsonstring{set;get;}
   
    public string id1{set;get;}
    public string issued_at1{set;get;}
    public string refresh_token1{set;get;}
    public string instance_url1{set;get;}
    public string signature1{set;get;}
     public string access_token1{set;get;}
    public void getData()
        {
            
            JSONParser jp = JSON.createParser(jsonstring);
			        while(jp.nextToken()!=null)
                    {
                        
            	if(jp.getText()=='id')
            	{
                 jp.nextToken();
                id1 = jp.getText();
                }
                else if(jp.getText()=='issued_at')
            	{
                 jp.nextToken();
                issued_at1 = jp.getText();
                }
                else if(jp.getText()=='refresh_token')
            	{
                 jp.nextToken();
                refresh_token1 = jp.getText();
                }    
                  else if(jp.getText()=='instance_url')
            	{
                 jp.nextToken();
                instance_url1 = jp.getText();
                }    
                        else if(jp.getText()=='signature')
            	{
                 jp.nextToken();
                signature1 = jp.getText();
                }   
                         else if(jp.getText()=='access_token')
            	{
                 jp.nextToken();
                access_token1 = jp.getText();
                }    
                    }
            
                    } 
    	

}