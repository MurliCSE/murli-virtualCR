using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration ;

/// <summary>
/// Summary description for connection
/// </summary>
public class connection
{
	public static string con=ConfigurationManager.ConnectionStrings ["virtualclass"].ToString ();

}