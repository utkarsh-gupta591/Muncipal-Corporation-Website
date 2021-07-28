package connection;

import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.*;

public class Connectionclass
{
public Statement getConnection()
{
    Statement statement=null;
    
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/muncipalcorporation", "root","");
       
        statement=connection.createStatement();
        
    }catch(Exception e)
    {
     System.out.println(e);
    }
   return statement;
}
public String execute(String qry)
{
    String status;
    try
    {
        
        Statement st=this.getConnection();
        if(st.executeUpdate(qry)==1)
        {
            status="success";
        }
        else
        {
            status="Error to execute query";
        }
    }catch(Exception e)
    {
        status=" exception : "+e.getMessage()+"("+e+")";
    }
    return status;
}
public ResultSet getRecord(String qry)
{
    ResultSet rs=null;
    try
    {
        Statement st=this.getConnection();
        rs=st.executeQuery(qry);
    }catch(Exception e)
    {
        
    }
    return rs;
}
public String getTable(String qry,String url1,String url2,String title1,String title2,String colName, String tableName)
{
    String rsdata="";
    try
    {
        ResultSet rs=getRecord(qry);
        ResultSetMetaData rsmd=rs.getMetaData();
        int colCount=rsmd.getColumnCount();
        rsdata="<table class='table table-bordered'>";
                rsdata+="<tr>";
                        for(int p=1;p<=colCount;p++)
                        {
                            rsdata+="<th>"+rsmd.getColumnLabel(p)+"</th>";
                        }
                        if(!tableName.equalsIgnoreCase("complaint"))
                        {
                        rsdata+="<th>Update</th>";
                        rsdata+="<th>Delete</th>";
                        }
                        rsdata+="</tr>";
                        int count=0;
                        while(rs.next())
                        {
                            rsdata+="<tr>";
                            for(int p=1;p<=colCount;p++)
                            {
                                rsdata+="<td>"+rs.getString(p)+"</td>";
                            }
                            if(!tableName.equalsIgnoreCase("complaint"))
                            {
                            rsdata+="<td><a class='btn btn-dark' href='"+url1+"?id="+rs.getString(colName)+"'>"+title1+"</a></td>";
                            rsdata+="<td><a class='btn btn-dark' href='"+url2+"?id="+rs.getString(colName)+"'>"+title2+"</a></td>";
                            }
                            rsdata+="</tr>";
                            count++;
                        }
                        rsdata+="</table>";
                        if(count==0)
                        {
                            rsdata="Record not found";
                        }
    }catch(Exception e)
    {
rsdata="Error in code "+e;        
    }
    return rsdata;
}
}