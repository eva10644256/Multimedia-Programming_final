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
            if( request.getParameter("gdid") != "" && request.getParameter("gdid") !=null ){
                sql="use `bb`";
                con.createStatement().execute(sql);
                String new_goodID=request.getParameter("gdid");
                String new_goodname=new String(request.getParameter("gdname").getBytes("ISO-8859-1"),"UTF-8");
                String new_price=request.getParameter("gdprice");
                String new_quan=request.getParameter("gdquan");

                sql = "SELECT * FROM bb.goods WHERE goodID = '"+request.getParameter("gdid")+"'";
                ResultSet rs = con.createStatement().executeQuery(sql);
                if(rs.next()){
                    sql = "UPDATE goods SET goodname ='"+new_goodname+"', price='"+new_price+"', quan='"+new_quan+"' WHERE goodID = '"+new_goodID+"' ";
                    con.createStatement().execute(sql);
                    out.println("<SCRIPT LANGUAGE='JavaScript'>");
                    out.println("alert('商品修改成功！')");
                    out.println("</SCRIPT>");
                    response.setHeader("Refresh","0;firm.jsp");

                con.close();
                }
                else{
                    out.println("<SCRIPT LANGUAGE='JavaScript'>");
                    out.println("alert('請確認貨號輸入正確')");
                    out.println("history.back();");
                    out.println("</SCRIPT>");
                }

                
            }
            else{
                out.println("<SCRIPT LANGUAGE='JavaScript'>");
                out.println("alert('請輸入完整資訊')");
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