using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Center
/// </summary>
public class Center
{
    
    string name;
    string location;
    

	public Center(string name,string loc)
	{
        
        this.name = name;
        this.location = loc;
	}
    
    public string Name
    {
        get { return this.name; }
        set { this.name = value; }
    }
    public string Location
    {
        get { return this.location; }
        set { this.location = value; }
    }
    
}