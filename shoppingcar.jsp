<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%
try
{
    Class.forName("com.mysql.jdbc.Driver");
    try
    {
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
            out.println("連線建立失敗");
        else
        {
          
          if(session.getAttribute("ID")==null)
            {

              con.close();
              out.println("<SCRIPT LANGUAGE='JavaScript'>");
              out.println("alert('請先登入！')");
              out.println("history.back();");
              out.println("</SCRIPT>");
            }

            else
            {
              String sql="use `bb`";
              con.createStatement().execute(sql);

              sql = "SELECT cart.*, goods.price AS Money FROM bb.cart JOIN bb.goods WHERE cart.goodname=goods.goodname AND memID='"+session.getAttribute("ID")+"' GROUP BY goodname"; 
              ResultSet rscart = con.createStatement().executeQuery(sql);
            
%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
  <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script>
  <script src="js/index.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
  <link rel="stylesheet" href="css/index.css">
  <link rel="stylesheet" href="css/shopping_car.css">
  <title>購物車</title>
</head>

<body>
  <header class="header">
    <div class="header_body">
      <a href="index.jsp"><img src="img/logo.jpg"></a>
      <div class="top_menu">
        <div class="header_top">
        <%out.println("<a href='logout.jsp' class='login-text'>登出</a>");%>
        </div>
        <div class="header_menu">
          <nav>
            <ul class="flex-nav">
              <li><a href="woman.jsp">WOMAN</a></li>
              <li><a href="man.jsp">MAN</a></li>
              <li><a href="kids.jsp">KIDS</a></li>
              <li><a href="sport.jsp">SPORT</a></li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </header>
  <div class="shopping_car_box">
      <table border="1" style="margin:auto">
        <tr>
          <td>商品名稱</td>
          <td>尺寸</td>
          <td>價格</td>
          <td>數量</td>
          <td>小計</td>
          <td>刪除</td>
        </tr>

        <%
        while(rscart.next())
            {
                out.println("<tr>");
                out.println("<td>"+rscart.getString("goodname")+"</td>");
                out.println("<td>"+rscart.getString("goodsize")+"</td>");
                out.println("<td>"+rscart.getString("Money")+"</td>");
                out.println("<td>"+rscart.getString("num")+"</td>");
                out.println("<td>"+rscart.getString("price")+"</td>");
                out.println("<form action='removecart.jsp' method='post'>");
                out.println("<input type='hidden' value='"+rscart.getString("goodname")+"' name='gdname'>");
                out.println("<input type='hidden' value='"+rscart.getString("goodsize")+"' name='gdsize'>");
                out.println("<td><button type='submit'>刪除</button></td>");
                out.println("</form>");
                out.println("</tr>");
            }
          }
        %>
        
      </table>
  
  <div class="total">
  <%
              String sql = "SELECT sum(price) FROM bb.cart WHERE memID='"+session.getAttribute("ID")+"'";
              ResultSet rstotal = con.createStatement().executeQuery(sql);
              while(rstotal.next())
              {
                out.println("<p>應付金額："+rstotal.getString("sum(price)")+"</p>");
              }
              %>
              
  </div>
  <div class="from_contact-box">
    <div class="product_text">
      <form action="add_order.jsp" method="post" class="from">
        <h2>訂購資料</h2>
        <div class="number1">
          <span class="span1">姓名</span>
          <span class="span2"><input type="text" class="input-field" placeholder="" name="name"></span>
        </div>
        <div class="number1">
          <span class="span1">地址</span>
          <span class="span2"><input type="text" class="input-field" placeholder="" name="addr"></span>
        </div>
        <div class="number1">
          <span class="span1">電話</span>
          <span class="span2"><input type="text" class="input-field" placeholder="" name="tel"></span>
        </div>
        <div class="number1">
          <span class="span1">Email</span>
          <span class="span2"><input type="text" class="input-field" placeholder="" name="email"></span>
        </div>
        <div class="number1">
          <span class="span1">有話想說</span>
          <span class="span2"> <textarea class="input-field" placeholder="" name="elsetosay"></textarea></span>
        </div>
        <input type="submit" value="確認訂購" class="product_button">
      </form>
    </div>
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