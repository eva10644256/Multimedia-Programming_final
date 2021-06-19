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
                    //sql = "SELECT * FROM `members` WHERE `mail`='" +request.getParameter("email")+"'AND `pwd`='"+request.getParameter("password")+"'";
                    //ResultSet rs =con.createStatement().executeQuery(sql);
                    String sql2 = "SELECT * FROM `members` WHERE `mail`=? AND `pwd`=? ";
                    PreparedStatement pstmt = null ;
                    pstmt=con.prepareStatement(sql2);
                    pstmt.setString(1,request.getParameter("email"));
                    pstmt.setString(2,request.getParameter("password"));

                    ResultSet rs =pstmt.executeQuery();

                    if(rs.next())
                    {
                  	    session.setAttribute("ID",rs.getString("memID"));
                        response.setHeader("Refresh","0;index.jsp");
                    }
                    else
                    {
                        //sql = "SELECT * FROM `admin` WHERE `mail`='" +request.getParameter("email")+"'AND `pwd`='"+request.getParameter("password")+"'";
                        //ResultSet rs_admin =con.createStatement().executeQuery(sql);
                        
                        String sql3 = "SELECT * FROM `admin` WHERE `mail`=? AND `pwd`=? ";
                        PreparedStatement pstmt2 = null ;
                        pstmt2=con.prepareStatement(sql3);
                        pstmt2.setString(1,request.getParameter("email"));
                        pstmt2.setString(2,request.getParameter("password"));

                        ResultSet rs_admin =pstmt2.executeQuery();

                        if(rs_admin.next()){
                            out.println("<SCRIPT LANGUAGE='JavaScript'>");
                            out.println("alert('管理員你好，歡迎進入後台！')");
                            out.println("window.document.location.href='firm.jsp';");
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