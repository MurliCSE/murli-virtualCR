using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


/// <summary>
/// Summary description for loginclass
/// </summary>
public class loginclass:connection
{
    SqlConnection con1 = new SqlConnection();
    SqlCommand cmd = new SqlCommand();    
    private string _email;
    private string _password;
    #region email
    public string email
    {
        get
        {
            return _email;
        }
        set
        {
            _email = value;
        }
    }
    #endregion
    #region password
    public string password
    {
        get
        {
            return _password;
        }
        set
        {
            _password = value;
        }
    }
    #endregion


    #region checklogin
    public bool checklogin()
    {
        int flag = 0;
        con1.ConnectionString = con.ToString();
        con1.Open();
        cmd.CommandText = "select_tutor";
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@email", _email);
        cmd.Parameters.AddWithValue("@password", _password);
        cmd.Connection = con1;
        SqlDataReader rd = cmd.ExecuteReader();
        while(rd.Read())
        {
            if (_email == rd["email"].ToString () && _password == rd["password"].ToString ())
            {
                flag =1;
            }
        }
        if (flag == 1)
            return true;
        else
            return false;


    }
    #endregion
}