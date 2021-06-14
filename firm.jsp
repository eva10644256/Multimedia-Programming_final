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
    <h1>新增商品</h1>
    <form action="addPD.jsp" method="post">
      <table border="1" style="margin:auto">
      <tr>
        <td>請輸入商品貨號</td>
        <td><input type="text" name="pdid" required/></td>
      </tr>
      <tr>
        <td>請輸入商品名稱</td>
        <td><input type="text" name="pdname" required/></td>
      </tr>
      <tr>
        <td>請輸入商品價格</td>
        <td><input type="text" name="pdprice" required/></td>
      </tr>
      <tr>
        <td>請輸入商品尺寸</td>
        <td><input type="text" name="pdsize" required/></td>
      </tr>
      <tr>
        <td>請輸入商品庫存</td>
        <td><input type="text" name="pdquan" required/></td>
      </tr>
      <tr>
        <td>請輸入已銷售數量</td>
        <td><input type="text" name="pdnum" required/></td>
      </tr>
      <tr>
        <td>請輸入商品介紹</td>
        <td><input type="text" name="pdintro" required/></td>
      </tr>
       <tr>
        <td>請輸入商品樣式</td>
        <td><input type="text" name="pdtype" required/></td>
      </tr>
       <tr>
        <td>請輸入商品種類</td>
        <td><input type="text" name="pdkind" required/></td>
      </tr>
      <tr>
        <td>請輸入圖片路徑</td>
        <td><input type="text" name="pdpath" required/></td>
      </tr>  
    </table>
    <input type="submit" value="送出">
    </form>

    <h1>修改商品</h1>
    <form action="changePD.jsp" method="post">
      <table border="1" style="margin:auto">
      <tr>
        <td>需修改的商品貨號</td>
        <td><input type="text" name="gdid" ></td>
      </tr>
      <tr>
        <td>新的商品名稱</td>
        <td><input type="text" name="gdname" required/></td>
      </tr>
      <tr>
        <td>新的商品價格</td>
        <td><input type="text" name="gdprice" /></td>
      </tr>
      <tr>
        <td>新的商品庫存</td>
        <td><input type="text" name="gdquan" ></td>
      </tr>
    </table>
    <input type="submit" value="送出">
    </form>
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
  }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
}
%>