<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
<%
try 
{
	Class.forName("com.mysql.jdbc.Driver");
	try 
    {	
		String url="jdbc:mysql://localhost/?serverTimezone=UTC";
		String sql="";
		Connection con=DriverManager.getConnection(url,"root","1234");
		if(con.isClosed())
			out.println("連線失敗");
		else
        {
            if(session.getAttribute("ID")!=null)
            {

                    sql="use `bb`";
                    con.createStatement().execute(sql);

                    String new_msg=new String(request.getParameter("msg").getBytes("ISO-8859-1"),"UTF-8");//接收前端傳來的留言內容
                    String new_name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
                    String new_goodname = new String(request.getParameter("goodname").getBytes("ISO-8859-1"),"UTF-8");
                    java.sql.Date new_time=new java.sql.Date(System.currentTimeMillis());
                    Object new_mmid = session.getAttribute("ID");

                    

                    sql = "INSERT `message` (`message`, `memid`, `wrdate`, `memname`, `gdname`)";
                    sql+="VALUE ('"+new_msg+"', ";
                    sql+="'"+new_mmid+"', ";
                    sql+="'"+new_time+"', ";
                    sql+="'"+new_name+"', ";  
                    sql+="'"+new_goodname+"') ";    
                    
                    con.createStatement().execute(sql);

                    con.close();
                    out.println("<SCRIPT LANGUAGE='JavaScript'>");
                    out.println("alert('留言成功！重整一次即可看到您的留言~')");
                    out.println("history.back();");
                    out.println("</SCRIPT>");
                    //response.setHeader("history.back();");
            }
            else
            {
              con.close();
              out.println("<SCRIPT LANGUAGE='JavaScript'>");
              out.println("alert('請先登入！')");
              out.println("history.back();");
              out.println("</SCRIPT>");
            }
        }
	}
	catch (SQLException sExec) 
    {
		out.println("SQL錯誤"+sExec.toString());
	}
}
catch (ClassNotFoundException err) 
{
	out.println("class錯誤"+err.toString());
}
%>