<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
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
            out.println("連線建立失敗");
        else
        {
          sql="use `bb`";
          con.createStatement().execute(sql);
              }

%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
  <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script>
  <script src="js/firm.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
  <link rel="stylesheet" href="css/index.css">
  <title>後台管理</title>
</head>

<body>
  <header class="header">
    <div class="header_body">
      <a href="index.jsp"><img src="img/logo.jpg"></a>
      <div class="top_menu">
        <div class="header_top">
          <%out.println("<a href='logout.jsp' class='login-text'>登出</a>");%>

        </div>
        <div class="firm_menu">
          <nav>
            <ul class="flex-nav">
              <li><a href="firm.jsp">商品管理</a></li>
              <li><a href="list.jsp">商品清單</a></li>
              <li><a href="order.jsp">訂單查詢</a></li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </header>
  
  <!--內容頁面-->
  <div class="firm_editor">
    <table border="1" style="margin:auto">
      <tr>
        <td>訂單編號</td>
        <td>購買品名</td>
        <td>購買尺寸</td>
        <td>購買數量</td>
        <td>小計</td>
        <td>收件者email</td>
        <td>收件者名稱</td>
        <td>收件者地址</td>							
        <td>收件者電話</td>
        <td>備註</td>
      </tr>
      <%
      sql = "SELECT * FROM bb.order;";
      ResultSet rs =con.createStatement().executeQuery(sql);
      while(rs.next())
            {
                out.println("<tr>");
                out.println("<td>"+rs.getString("orderID") +"</td>");
                out.println("<td>"+rs.getString("goodname")+"</td>");
                out.println("<td>"+rs.getString("goodsize")+"</td>");
                out.println("<td>"+rs.getString("quan")+"</td>");
                out.println("<td>"+rs.getString("price")+"</td>");
                out.println("<td>"+rs.getString("memmail")+"</td>");
                out.println("<td>"+rs.getString("sendname")+"</td>");
                out.println("<td>"+rs.getString("address")+"</td>");
                out.println("<td>"+rs.getString("phone")+"</td>");
                out.println("<td>"+rs.getString("note")+"</td>");
                out.println("</tr>");
            }
        %>
    </table>

  </div>


</body>

</html>
<%
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
          //response.sendRedirect("signin&register.jsp");
        
  }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
}
%>