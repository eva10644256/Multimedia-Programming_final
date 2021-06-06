<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
            sql="use `bb`";
            con.createStatement().execute(sql);
            //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1"),"UTF-8"編碼
            String new_username=new String(request.getParameter("User").getBytes("ISO-8859-1"),"UTF-8");
            String new_mail=request.getParameter("Email");
            String new_pwd=request.getParameter("Password");
            String new_repwd=request.getParameter("RePassword");
            
            if(!(new_username.equals("")) && new_mail != null && new_mail != "" && new_pwd != null && new_pwd != "")
            {
                if(new_pwd.equals(new_repwd))
                {
                    sql = "SELECT * FROM `members` WHERE `mail`='" +new_mail+"'"; 
                    ResultSet rs =con.createStatement().executeQuery(sql);

                    if(rs.next())
                    {
                        out.println("<SCRIPT LANGUAGE='JavaScript'>");
                        out.println("alert('該Email已被註冊')");
                        out.println("history.back();");
                        out.println("</SCRIPT>");
                    }
                    //Step 4: 執行 SQL 指令
                    else
                    {
                        sql="INSERT `members` (`name`, `mail` , `pwd`)";
                        sql+="VALUE ('"+new_username+"', ";
                        sql+="'"+new_mail+"', ";
                        sql+="'"+new_pwd+"' )";     
                        
                        con.createStatement().execute(sql);
                        out.println("<SCRIPT LANGUAGE='JavaScript'>");
                        out.println("alert('註冊成功！請直接登入')");
                        out.println("window.document.location.href='login.jsp';");
                        out.println("</SCRIPT>");
                    }
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
		  
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
          //response.sendRedirect("signin&register.jsp");
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