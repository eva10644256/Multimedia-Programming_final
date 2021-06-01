<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
<%
try{
    Class.forName("com.mysql.jdbc.Driver");
    try{
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
          out.println("連線建立失敗");
        else
        {  
            con.createStatement().execute("USE `bb`");
            String sql = "SELECT * FROM `members`" ;
            con.createStatement().execute(sql);
            if(request.getParameter("email") != "" && request.getParameter("email") !=null && request.getParameter("password") != null && request.getParameter("password") != "")
                {
                    sql = "SELECT * FROM `members` WHERE `mail`='" +request.getParameter("email")+"'AND `pwd`='"+request.getParameter("password")+"'";
                    ResultSet rs =con.createStatement().executeQuery(sql);
                    if(rs.next())
                    {
                  	    session.setAttribute("ID",rs.getString("memID"));
                        response.setHeader("Refresh","0;index.html");
                    }
                    else
                    {
                        sql = "SELECT * FROM `admin` WHERE `mail`='" +request.getParameter("email")+"'AND `pwd`='"+request.getParameter("password")+"'";
                        ResultSet rs_admin =con.createStatement().executeQuery(sql);
                        
                        if(rs_admin.next()){
                            out.println("<SCRIPT LANGUAGE='JavaScript'>");
                            out.println("alert('管理員你好，歡迎進入後台！')");
                            out.println("window.document.location.href='firm.html';");
                            out.println("</SCRIPT>");
                        }

                        else{

                            out.println("<SCRIPT LANGUAGE='JavaScript'>");
                            out.println("alert('帳號密碼錯誤！')");
                            out.println("window.document.location.href='login.jsp';");
                            out.println("</SCRIPT>");
                        }

                    }
                }
            else
            {
                out.println("<SCRIPT LANGUAGE='JavaScript'>");
                out.println("alert('請輸入帳號密碼！')");
                out.println("window.document.location.href='login.jsp';");
                out.println("</SCRIPT>");
            }
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