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

      	sql = "SELECT * FROM `members` WHERE `memID`='"+session.getAttribute("ID")+"'"; 
		con.createStatement().executeQuery(sql);
      	
		String new_username=new String(request.getParameter("username").getBytes("ISO-8859-1"),"UTF-8");
		String new_email=request.getParameter("email");
		String new_password=request.getParameter("password");
		String new_repassword=request.getParameter("repassword");

			if(!(new_username.equals("")) && new_email != null && new_email != "" && new_password != null && new_repassword != "")
            {

				if(new_password.equals(new_repassword))
                {
                  			sql="UPDATE `members` SET `name` = '"+new_username+"',`mail` = '"+new_email+"',`pwd` = '"+new_password+"' WHERE `memID` = '"+session.getAttribute("ID")+"'";
							con.createStatement().execute(sql);

							out.println("<SCRIPT LANGUAGE='JavaScript'>");
                        	out.println("alert('修改成功！')");
                        	out.println("window.document.location.href='index.jsp';");
                        	out.println("</SCRIPT>");
							}
                else
				{
					out.println("<SCRIPT LANGUAGE='JavaScript'>");
					out.println("alert('密碼 與 確認密碼不符')");
					out.println("history.back();");
					out.println("</SCRIPT>");
				}
			}
			else
			{
				out.println("<SCRIPT LANGUAGE='JavaScript'>");
				out.println("alert('請輸入完整資料內容')");
				out.println("history.back();");
				out.println("</SCRIPT>");
			} 
			
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