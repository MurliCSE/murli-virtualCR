using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Summary description for register
/// </summary>
public class register:connection
{
    SqlConnection con1 = new SqlConnection();
    SqlCommand cmd = new SqlCommand();

    public string _username;
    public string _password;
    public string _email;
    public string _address;
    public string _mobileno;
    public string _branch;
    public string _year;
    public string _payment;
  
    public string username
    {
        get
        {
            return _username; 
        }
        set
        {
            _username = value;
        }
    }

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
    public string address
    {
        get
        {
            return _address;
        }
        set
        {
            _address = value;
        }

    }
    public string mobileno
    {
        get
        {
            return _mobileno;
        }
        set
        {
            _mobileno = value;
        }

    }
    public string branch
    {
        get
        {
            return _branch;
        }
        set
        {
            _branch = value;
        }

    }
    public string year
    {
        get
        {
            return _year;
        }
        set
        {
            _year = value;
        }

    }
    public string payment
    {
        get
        {
            return _payment;
        }
        set
        {
            _payment = value;
        }

    }

    public int insert()
    {        
        con1.ConnectionString = con.ToString();
        con1.Open();
        cmd.CommandText = "insert1";
        cmd.Parameters .AddWithValue ("@username",this._username);
        cmd.Parameters.AddWithValue("@password", this._password);
        cmd.Parameters.AddWithValue("@email", this._email);
        cmd.Parameters.AddWithValue("@address", this._address);
        cmd.Parameters.AddWithValue("@mobileno", this._mobileno);
        cmd.Parameters.AddWithValue("@branch", this._branch);
        cmd.Parameters.AddWithValue("@year", this._year);
        cmd.Parameters.AddWithValue("@payment", this._payment);
               
         cmd.Connection = con1;
        cmd.CommandType = CommandType.StoredProcedure;
        return cmd.ExecuteNonQuery();

    }

   
}