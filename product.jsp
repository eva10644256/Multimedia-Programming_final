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
            String new_search=new String(request.getParameter("search").getBytes("ISO-8859-1"),"UTF-8");

            sql = "SELECT * FROM bb.goods WHERE goodname LIKE '%"+new_search+"%' GROUP BY goodname";  
            ResultSet rs =con.createStatement().executeQuery(sql);
            boolean flag = true;
            String STOCK = "", PRICE="", NAME="", INTRO="", IMGPATH="" ;

            while(rs.next())
              {
                flag=false;
                STOCK = rs.getString("quan"); 
                PRICE = rs.getString("price");
                NAME = rs.getString("goodname");
                INTRO = rs.getString("intro");
                IMGPATH = rs.getString("path");
              }

            if(flag){
                out.println("<SCRIPT LANGUAGE='JavaScript'>");
                out.println("alert('查無資料')");
                out.println("history.back();");
                out.println("</SCRIPT>");
                con.close();
            }

            sql = "SELECT * FROM bb.goods WHERE goodname LIKE '%"+new_search+"%' AND goodsize = 's'";  
            ResultSet rs_s =con.createStatement().executeQuery(sql);
            String STOCK_s="";
            while(rs_s.next()){
              STOCK_s = rs_s.getString("quan");
            }

            sql = "SELECT * FROM bb.goods WHERE goodname LIKE '%"+new_search+"%' AND goodsize = 'm'";  
            ResultSet rs_m =con.createStatement().executeQuery(sql);
            String STOCK_m="";
            while(rs_m.next()){
              STOCK_m = rs_m.getString("quan");
            }

            sql = "SELECT * FROM bb.goods WHERE goodname LIKE '%"+new_search+"%' AND goodsize = 'l'";  
            ResultSet rs_l =con.createStatement().executeQuery(sql);
            String STOCK_l="";
            while(rs_l.next()){
              STOCK_l = rs_l.getString("quan");
            }

            sql = "SELECT * FROM bb.goods WHERE goodname LIKE '%"+new_search+"%' AND goodsize = 'xl'";  
            ResultSet rs_xl =con.createStatement().executeQuery(sql);
            String STOCK_xl="";
            while(rs_xl.next()){
              STOCK_xl = rs_xl.getString("quan");
            }
              

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
  <title>產品資訊</title>
</head>

<body>
  <header class="header">
    <div class="header_body">
      <a href="index.jsp"><img src="img/logo.jpg"></a>
      <div class="top_menu">
        <div class="header_top">
          <div class="search-box">
            <input class="search-txt" type="text" name="" placeholder="Type to search">
            <a class="search-btn" href="#">
              <i class="fa fa-search"></i>
            </a>

          </div>
          <a href="login.html" class="login-text">註冊/登入</a>
          <a href="#"><i class="fa fa-user"></i></a>
          <a href="#"><i class="fa fa-shopping-cart"></i></a>

        </div>
        <div class="header_menu">
          <nav>
            <ul class="flex-nav">
              <li><a href="woman.html">WOMAN</a></li>
              <li><a href="man.html">MAN</a></li>
              <li><a href="kids.html">KIDS</a></li>
              <li><a href="sport.html">SPORT</a></li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </header>
  <!--內容頁面-->
  <div class="women-contant">
    <div class="all_list">
      <div class="list">
        <h2><a href="woman.html" class="list-a">女裝</a></h2>
        <hr color="black" align="left" width="80%" size="1">
        <ul>
          <li><a href="woman.html #top-w" class="list-a">上衣</a></li>
          <li><a href="woman.html #down-w" class="list-a">下著</a></li>
          <li><a href="woman.html #coat-w" class="list-a">外套</a></li>

        </ul>
      </div>
      <div class="list">
        <h2><a href="man.html" class="list-a">男裝</a></h2>
        <hr color="black" align="left" width="80%" size="1">
        <ul>
          <li><a href="man.html #top-m" class="list-a">上衣</a></li>
          <li><a href="man.html #down-m" class="list-a">下著</a></li>
          <li><a href="man.html #coat-m" class="list-a">外套</a></li>
        </ul>
      </div>
      <div class="list">
        <h2><a href="kids.html" class="list-a">童裝</a></h2>
        <hr color="black" align="left" width="80%" size="1">
        <ul>
          <li><a href="kids.html #top-k" class="list-a">上衣</a></li>
          <li><a href="kids.html #down-k" class="list-a">下著</a></li>
          <li><a href="kids.html #coat-k" class="list-a">外套</a></li>
        </ul>
      </div>
      <div class="list">
        <h2><a href="sport.html" class="list-a">運動</a></h2>
        <hr color="black" align="left" width="80%" size="1">
        <ul>
          <li><a href="sport.html #top-s" class="list-a">上衣</a></li>
          <li><a href="sport.html #down-s" class="list-a">下著</a></li>
          <li><a href="sport.html #coat-s" class="list-a">外套</a></li>
        </ul>
      </div>
    </div>
  </div>
  <div class="product_information">

    <div class="product_img">
      <img src="<%=IMGPATH%>">
    </div>
    <div class="product_text">
      <h1><%=NAME%></h1>
      <div class="number1">
        <span class="span1">商品庫存</span>
        <span class="span2"  id="Stocknumber"><%=STOCK%></span>
      </div>
      <div class="number2">
        <span class="span1">商品價格</span>
        <span class="span2">NT$<%=PRICE%></span>
      </div>
      <div class="number2">
        <span class="span1">商品介紹</span>
        <span class="span2"><%=INTRO%></span>
      </div>
      <div class="number2">
        <span class="span1">商品尺寸</span>
        <span class="span2">
            <input type="button" onclick = "changeStock(<%=STOCK_s%>)" value="S">
            <input type="button" onclick = "changeStock(<%=STOCK_m%>)" value="M">
            <input type="button" onclick = "changeStock(<%=STOCK_l%>)" value="L">
            <input type="button" onclick = "changeStock(<%=STOCK_xl%>)" value="XL">
          </span>
      </div>

      <script>

        function changeStock(s)
        {
          document.getElementById("Stocknumber").innerHTML=s; //改變剩餘數量的數字
        }
      </script>

      <div class="number2">
        <span class="span1">商品數量</span>
        <span class="span2"><select style="height: 25px;">
            <option>請選擇數量</option>
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
          </select></span>
      </div>
      <div class="number3">
        <span class="span1">我要評分</span>
        <span class="span2">
          <!--<select style="height: 25px;">
            <option>請選擇評分</option>
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
          </select>-->
          <div class="star">
            <input type="radio" name="item" id="item01" checked />
            <!--这里设置checked初始状态-->
            <label class="star-item" for="item01" title="很差"></label>
            <input type="radio" name="item" id="item02" />
            <label class="star-item" for="item02" title="差"></label>
            <input type="radio" name="item" id="item03" />
            <label class="star-item" for="item03" title="一般"></label>
            <input type="radio" name="item" id="item04" />
            <label class="star-item" for="item04" title="很好"></label>
            <input type="radio" name="item" id="item05" />
            <label class="star-item" for="item05" title="完美"></label>
          </div>
        </span>
      </div>
      <input type="button" value="加入購物車" class="product_button">
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