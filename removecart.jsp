<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
<%
try {
	Class.forName("com.mysql.jdbc.Driver");
	try {	
		String url="jdbc:mysql://localhost/?serverTimezone=UTC";
		String sql="";
		Connection con=DriverManager.getConnection(url,"root","1234");
		if(con.isClosed())
			out.println("連線失敗");
		else
        {
			sql="use `bb`";
			con.createStatement().execute(sql);
			String new_goodname=new String(request.getParameter("gdname").getBytes("ISO-8859-1"),"UTF-8");
			String new_goodsize=request.getParameter("gdsize");

			sql = "DELETE FROM bb.cart WHERE goodname = '"+new_goodname+"' AND goodsize = '"+new_goodsize+"' " ;
			con.createStatement().execute(sql);
            out.println("<SCRIPT LANGUAGE='JavaScript'>");
            out.println("alert('刪除成功！')");
            out.println("</SCRIPT>");
			response.setHeader("Refresh","0;shoppingcar.jsp");


        con.close();
    }
	}
	catch (SQLException sExec) {
			out.println("SQL錯誤"+sExec.toString());
	}
}
catch (ClassNotFoundException err) {
	out.println("class錯誤"+err.toString());
}
%>