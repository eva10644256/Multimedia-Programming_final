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
<style>
  body{
    background-color: white;
  }
</style>
<body>
  <header class="header">
    <div class="header_body">
      <a href="index.jsp"><img src="img/logo.jpg"></a>
      <div class="top_menu">

        <div class="header_top">


      <%if(session.getAttribute("ID")!=null)
      {
        out.println("<a href='logout.jsp' class='login-text'>登出</a>");
        out.println("<a href='membership.jsp'><i class='fa fa-user'></i></a>");
      }
      else{
        out.println("<a href='login.jsp' class='login-text'>註冊/登入</a>");
        out.println("<a href='loginhead.jsp'><i class='fa fa-user'></i></a>");
      }
      %>
          <a href="#"><i class="fa fa-shopping-cart"></i></a>

        </div>
        <div class="header_down">
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
          <div class="search">
            <div class="select_box">
              <form action="product.jsp" method="post">
                <select size="1" class="select_style" name="search">
                  <option value="請選擇商品" style="font-weight: bold;"><strong>請選擇商品</strong></option>
                  <optgroup label="女裝-上衣">
                    <option value="甜美蕾絲拼接小可愛">甜美蕾絲拼接小可愛</option>
                    <option value="荷葉長版上衣">荷葉長版上衣</option>
                    <option value="貓咪燙印圓領上衣">貓咪燙印圓領上衣</option>
                    <option value="條紋前短後長上衣">條紋前短後長上衣</option>
                  </optgroup>
                  <optgroup label="女裝-下著">
                    <option value="鬆緊反褶短褲">鬆緊反褶短褲</option>
                    <option value="輕薄牛仔短褲">輕薄牛仔短褲</option>
                    <option value="鬆緊彈性窄管褲">鬆緊彈性窄管褲</option>
                    <option value="八分斜紋寬褲">八分斜紋寬褲</option>
                  </optgroup>
                  <optgroup label="女裝-外套">
                    <option value="丹寧牛仔外套">丹寧牛仔外套</option>
                    <option value="防風條紋連帽外套">防風條紋連帽外套</option>
                    <option value="長版防曬罩衫">長版防曬罩衫</option>
                    <option value="翻領收腰傘襬風衣外套">翻領收腰傘襬風衣外套</option>
                  </optgroup>
                  <optgroup label="男裝-上衣">
                    <option value="機能涼感圓領上衣">機能涼感圓領上衣</option>
                    <option value="涼感圓領背心">涼感圓領背心</option>
                    <option value="徽章造型條紋PLO衫">徽章造型條紋PLO衫</option>
                    <option value="不易皺簡約襯衫">不易皺簡約襯衫</option>
                  </optgroup>
                  <optgroup label="男裝-下著">
                    <option value="涼感縮口休閒褲">涼感縮口休閒褲</option>
                    <option value="素色牛仔長褲">素色牛仔長褲</option>
                    <option value="純棉素色休閒短褲">純棉素色休閒短褲</option>
                    <option value="刷破彈力牛仔短褲">刷破彈力牛仔短褲</option>
                  </optgroup>
                  <optgroup label="男裝-外套">
                    <option value="連帽牛仔背心">連帽牛仔背心</option>
                    <option value="韓版棉挺括襯衫">韓版棉挺括襯衫</option>
                    <option value="牛仔飛行外套">牛仔飛行外套</option>
                    <option value="長版翻領大衣外套">長版翻領大衣外套</option>
                  </optgroup>
                  <optgroup label="童裝-上衣">
                    <option value="兔子印花長版上衣">兔子印花長版上衣</option>
                    <option value="綁帶兩穿短袖上衣">綁帶兩穿短袖上衣</option>
                    <option value="耳機膠印短袖上衣">耳機膠印短袖上衣</option>
                    <option value="大手牽小手短袖上衣">大手牽小手短袖上衣</option>
                  </optgroup>
                  <optgroup label="童裝-下著">
                    <option value="鬆緊牛仔寬褲">鬆緊牛仔寬褲</option>
                    <option value="荷葉腰鬆緊牛仔短褲">荷葉腰鬆緊牛仔短褲</option>
                    <option value="童趣數字鬆緊好動褲">童趣數字鬆緊好動褲</option>
                    <option value="素面透氣縮口好動褲">素面透氣縮口好動褲</option>
                  </optgroup>
                  <optgroup label="童裝-外套">
                    <option value="星星羽絨棉外套">星星羽絨棉外套</option>
                    <option value="毛球造型連帽羽絨外套">毛球造型連帽羽絨外套</option>
                    <option value="彈性針織排釦式外套">彈性針織排釦式外套</option>
                    <option value="口袋連帽絨毛背心">口袋連帽絨毛背心</option>
                  </optgroup>
                  <optgroup label="運動裝-上衣">
                    <option value="吸濕排汗撞色運動上衣">吸濕排汗撞色運動上衣</option>
                    <option value="抗UV涼感上衣">抗UV涼感上衣</option>
                    <option value="反光線條短袖上衣">反光線條短袖上衣</option>
                    <option value="長版運動短袖上衣">長版運動短袖上衣</option>
                  </optgroup>
                  <optgroup label="運動裝-下著">
                    <option value="彈力抽繩縮口褲">彈力抽繩縮口褲</option>
                    <option value="撞色假兩件瑜珈褲">撞色假兩件瑜珈褲</option>
                    <option value="縮口五分運動褲">縮口五分運動褲</option>
                    <option value="抽繩綁帶網布短褲">抽繩綁帶網布短褲</option>
                  </optgroup>
                  <optgroup label="運動裝-外套">
                    <option value="涼感運動連帽外套">涼感運動連帽外套</option>
                    <option value="防潑水抗UV光澤短版外套">防潑水抗UV光澤短版外套</option>
                    <option value="連帽抽繩拉鍊運動外套">連帽抽繩拉鍊運動外套</option>
                    <option value="造型高領運動休閒外套">造型高領運動休閒外套</option>
                  </optgroup>
                </select>
                <input type="submit" class="search-btn" value="搜尋">
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>
  <!--內容頁面-->
  <div class="women-contant">
    <div class="all_list">
      <div class="list">
        <h2><a href="woman.jsp" class="list-a">女裝</a></h2>
        <hr color="black" align="left" width="80%" size="1">
        <ul>
          <li><a href="woman.jsp#top-w" class="list-a">上衣</a></li>
          <li><a href="woman.jsp#down-w" class="list-a">下著</a></li>
          <li><a href="woman.jsp#coat-w" class="list-a">外套</a></li>

        </ul>
      </div>
      <div class="list">
        <h2><a href="man.jsp" class="list-a">男裝</a></h2>
        <hr color="black" align="left" width="80%" size="1">
        <ul>
          <li><a href="man.jsp#top-m" class="list-a">上衣</a></li>
          <li><a href="man.jsp#down-m" class="list-a">下著</a></li>
          <li><a href="man.jsp#coat-m" class="list-a">外套</a></li>
        </ul>
      </div>
      <div class="list">
        <h2><a href="kids.jsp" class="list-a">童裝</a></h2>
        <hr color="black" align="left" width="80%" size="1">
        <ul>
          <li><a href="kids.jsp#top-k" class="list-a">上衣</a></li>
          <li><a href="kids.jsp#down-k" class="list-a">下著</a></li>
          <li><a href="kids.jsp#coat-k" class="list-a">外套</a></li>
        </ul>
      </div>
      <div class="list">
        <h2><a href="sport.jsp" class="list-a">運動</a></h2>
        <hr color="black" align="left" width="80%" size="1">
        <ul>
          <li><a href="sport.jsp#top-s" class="list-a">上衣</a></li>
          <li><a href="sport.jsp#down-s" class="list-a">下著</a></li>
          <li><a href="sport.jsp#coat-s" class="list-a">外套</a></li>
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
  
  <div class="comment">
  <hr style="border: 1px solid gray">
  <h1 style="margin-left:175px; margin-top:10px">留言板</h1>
  <form>
    <textarea rows="1" placeholder="輸入你想要寫的內容..."></textarea>
    <input type="submit" value="留言" class="comment-btn">
  </form>
  <hr>
  <div class="board">
  使用者帳號1 時間<br>
  抓留言資料庫
  </div>
  <hr>
    <div class="board">
  使用者帳號2 時間<br>
  抓留言資料庫
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