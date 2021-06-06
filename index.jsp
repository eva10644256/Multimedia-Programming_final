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
          con.createStatement().execute("USE `bb`");
%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
  <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
  <script src="js/index.js" type="text/javascript"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
  <link rel="stylesheet" href="css/index.css">
  <title>活久見</title>
</head>

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

  <!--跑馬燈-->
  <div class="marquee">
    <marquee>歡迎光臨活久見，本館具有多樣服飾，男女老少皆宜，歡迎選購。</marquee>

    <div class="ad">
      <a href="javascript:;" title="回上面"><img src="https://www.flycan.com.tw/course/images/go-top.png" width="80"
          height="80" alt="go-top" title="回上面" id="img01"></a>
      <a href="https://shopping.pchome.com.tw/" title="pchome" target="_blank"><img src="img/pchome.PNG" width="80"
          height="80" title="去pchome" id="img02"></a>
      <a href="https://shopee.tw/" title="蝦皮購物" target="_blank"><img src="img/shopee.PNG" width="80" height="80"
          title="去蝦皮" id="img03"></a>
    </div>
  </div>
  <!-- 輪播圖片-->
  <div class="slider">
    <input type="radio" name="slider" id="slide1" checked>
    <input type="radio" name="slider" id="slide2">
    <input type="radio" name="slider" id="slide3">
    <input type="radio" name="slider" id="slide4">
    <div id="slides">
      <div id="overflow">
        <div class="inner">

          <div class="slide slide_1">
            <div class="slide-content">
              <a href="woman.jsp #coat-w" title="點我前往頁面"><img src="img/phome-1.jpg"></a>
            </div>
          </div>
          <div class="slide slide_2">
            <div class="slide-content">
              <a href="woman.jsp #top-w" title="點我前往頁面"><img src="img/phome-2.jpg"></a>
            </div>
          </div>
          <div class="slide slide_3">
            <div class="slide-content">
              <a href="man.jsp" title="點我前往頁面"><img src="img/phome-3.jpg"></a>
            </div>
          </div>
          <div class="slide slide_4">
            <div class="slide-content">
              <a href="kids.jsp #down-k" title="點我前往頁面"><img src="img/phome-4.jpg"></a>
            </div>
          </div>

        </div>
      </div>
    </div>
    <div id="controls" class="controls">
      <!--
      <i class="fas fa-angle-left"></i>
      <i class="fas fa-angle-right"></i>-->
      <label for="slide1"></label>
      <label for="slide2"></label>
      <label for="slide3"></label>
      <label for="slide4"></label>
    </div>
    <div id="bullets">
      <label for="slide1"></label>
      <label for="slide2"></label>
      <label for="slide3"></label>
      <label for="slide4"></label>
    </div>
  </div>
  <!-- 發燒推薦-->
  <div id="hot">
    <div data-content="發燒推薦" class="hr"></div>
    <div class="hot_box">
      <div class="hot_title">
        發燒推薦
      </div>
      <div class="hot_box_productbox">
      <%
            String sqlsn = "SELECT *, SUM(salenum) FROM goods GROUP BY goodname ORDER BY SUM(salenum) DESC LIMIT 5";
            ResultSet rssn = con.createStatement().executeQuery(sqlsn);
            while(rssn.next())
            {
                out.println("<div class='hot_box_product'>");
                out.println("<form action='product.jsp' method='post'>");
                out.println("<input type='hidden' name='search' value='"+rssn.getString("goodname")+"'>");
                out.println("<a href='product.jsp'><input type='image' src='"+rssn.getString("path")+"' class='img-fluid'>");
                out.println("<p>"+rssn.getString("goodname")+"</p>");
                out.println("</a>");
                out.println("</form>");
                out.println("</div>");
            }
        %>
        <!--<div class="hot_box_product">
          <img src="img/p1.jpg" class="img-fluid">
          <p>品名</p>
        </div>
        <div class="hot_box_product">
          <img src="img/p2.jpg" class="img-fluid">
          <p>品名</p>
        </div>
        <div class="hot_box_product">
          <img src="img/p3.jpg" class="img-fluid">
          <p>品名</p>
        </div>
        <div class="hot_box_product">
          <img src="img/p4.jpg" class="img-fluid">
          <p>品名</p>
        </div>
        <div class="hot_box_product">
          <img src="img/p5.jpg" class="img-fluid">
          <p>品名</p>
        </div>-->
      </div>
    </div>
  </div>

  <!--woman-->
  <div id="womanhot">
    <div data-content="woman" class="hr"></div>
    <div class="hot_box">
      <div class="womanhot_title" style="border-bottom: rgba(255, 66, 117, 0.8) 2px solid;">
        <div style="background-color:rgba(255, 66, 117, 0.8) ;">WOMAN</div>
      </div>
      <div class="hot_box_productbox">
        <%
            String sqlw = "SELECT * FROM goods WHERE type = 'woman' group by goodname LIMIT 5";
            ResultSet rsw = con.createStatement().executeQuery(sqlw);
            while(rsw.next())
            {
                out.println("<div class='hot_box_product'>");
                out.println("<form action='product.jsp' method='post'>");
                out.println("<input type='hidden' name='search' value='"+rsw.getString("goodname")+"'>");
                out.println("<a href='product.jsp'><input type='image' src='"+rsw.getString("path")+"' class='img-fluid'>");
                out.println("<p>"+rsw.getString("goodname")+"</p>");
                out.println("</a>");
                out.println("</form>");
                out.println("</div>");
            }
        %>
        <!--<div class="hot_box_product">
          <img src="img/p1.jpg" class="img-fluid">
          <p>品名</p>
        </div>
        <div class="hot_box_product">
          <img src="img/p2.jpg" class="img-fluid">
          <p>品名</p>
        </div>
        <div class="hot_box_product">
          <img src="img/p3.jpg" class="img-fluid">
          <p>品名</p>
        </div>
        <div class="hot_box_product">
          <img src="img/p4.jpg" class="img-fluid">
          <p>品名</p>
        </div>
        <div class="hot_box_product">
          <img src="img/p5.jpg" class="img-fluid">
          <p>品名</p>
        </div>-->

      </div>
    </div>
  </div>

  <!--man-->
  <div id="manhot">
    <div data-content="man" class="hr"></div>
    <div class="hot_box">
      <div class="womanhot_title" style="border-bottom: rgba(16, 99, 181, 0.8) 2px solid;">
        <div style="background-color:rgba(16, 99, 181, 0.8) ;">MAN</div>
      </div>
      <div class="hot_box_productbox">
      <%
            String sqlm = "SELECT * FROM goods WHERE type = 'man' group by goodname LIMIT 5";
            ResultSet rsm = con.createStatement().executeQuery(sqlm);
            while(rsm.next())
            {
                out.println("<div class='hot_box_product'>");
                out.println("<form action='product.jsp' method='post'>");
                out.println("<input type='hidden' name='search' value='"+rsm.getString("goodname")+"'>");
                out.println("<a href='product.jsp'><input type='image' src='"+rsm.getString("path")+"' class='img-fluid'>");
                out.println("<p>"+rsm.getString("goodname")+"</p>");
                out.println("</a>");
                out.println("</form>");
                out.println("</div>");
            }
        %>

        <!--<div class="hot_box_product">
          <img src="img/p1.jpg" class="img-fluid">
          <p>品名</p>
        </div>
        <div class="hot_box_product">
          <img src="img/p2.jpg" class="img-fluid">
          <p>品名</p>
        </div>
        <div class="hot_box_product">
          <img src="img/p3.jpg" class="img-fluid">
          <p>品名</p>
        </div>
        <div class="hot_box_product">
          <img src="img/p4.jpg" class="img-fluid">
          <p>品名</p>
        </div>
        <div class="hot_box_product">
          <img src="img/p5.jpg" class="img-fluid">
          <p>品名</p>
        </div>-->

      </div>
    </div>
  </div>

  <!--kids-->
  <div id="kids">
    <div data-content="kids" class="hr"></div>
    <div class="hot_box">
      <div class="womanhot_title" style="border-bottom:rgba(235, 107, 9, 0.8) 2px solid;">
        <div style="background-color:rgba(235, 107, 9, 0.8);">KIDS</div>
      </div>
      <div class="hot_box_productbox">
      <%
            String sqlk = "SELECT * FROM goods WHERE type = 'kids' group by goodname LIMIT 5";
            ResultSet rsk = con.createStatement().executeQuery(sqlk);
            while(rsk.next())
            {
                out.println("<div class='hot_box_product'>");
                out.println("<form action='product.jsp' method='post'>");
                out.println("<input type='hidden' name='search' value='"+rsk.getString("goodname")+"'>");
                out.println("<a href='product.jsp'><input type='image' src='"+rsk.getString("path")+"' class='img-fluid'>");
                out.println("<p>"+rsk.getString("goodname")+"</p>");
                out.println("</a>");
                out.println("</form>");
                out.println("</div>");
            }
        %>
        <!--<div class="hot_box_product">
          <img src="img/p1.jpg" class="img-fluid">
          <p>品名</p>
        </div>
        <div class="hot_box_product">
          <img src="img/p2.jpg" class="img-fluid">
          <p>品名</p>
        </div>
        <div class="hot_box_product">
          <img src="img/p3.jpg" class="img-fluid">
          <p>品名</p>
        </div>
        <div class="hot_box_product">
          <img src="img/p4.jpg" class="img-fluid">
          <p>品名</p>
        </div>
        <div class="hot_box_product">
          <img src="img/p5.jpg" class="img-fluid">
          <p>品名</p>
        </div>-->

      </div>
    </div>
  </div>

  <!--sport-->
  <div id="sport">
    <div data-content="mom&kid" class="hr"></div>
    <div class="hot_box">
      <div class="womanhot_title" style="border-bottom:rgba(58, 140, 24, 0.8) 2px solid;">
        <div style="background-color:rgba(58, 140, 24, 0.8);">SPORT</div>
      </div>
      <div class="hot_box_productbox">
      <%
            String sqls = "SELECT * FROM goods WHERE type = 'sport' group by goodname LIMIT 5";
            ResultSet rss = con.createStatement().executeQuery(sqls);
            while(rss.next())
            {
                out.println("<div class='hot_box_product'>");
                out.println("<form action='product.jsp' method='post'>");
                out.println("<input type='hidden' name='search' value='"+rss.getString("goodname")+"'>");
                out.println("<a href='product.jsp'><input type='image' src='"+rss.getString("path")+"' class='img-fluid'>");
                out.println("<p>"+rss.getString("goodname")+"</p>");
                out.println("</a>");
                out.println("</form>");
                out.println("</div>");
            }
        %>
        <!--<div class="hot_box_product">
          <img src="img/p1.jpg" class="img-fluid">
          <p>品名</p>
        </div>
        <div class="hot_box_product">
          <img src="img/p2.jpg" class="img-fluid">
          <p>品名</p>
        </div>
        <div class="hot_box_product">
          <img src="img/p3.jpg" class="img-fluid">
          <p>品名</p>
        </div>
        <div class="hot_box_product">
          <img src="img/p4.jpg" class="img-fluid">
          <p>品名</p>
        </div>
        <div class="hot_box_product">
          <img src="img/p5.jpg" class="img-fluid">
          <p>品名</p>
        </div>-->
      </div>
    </div>
  </div>
  <footer class="footer">
    <div class="f">
      <a href="member.html">關於我們</a> | 您是第<% 
          String counter="";
          counter="select * from counter";
			    ResultSet rc=con.createStatement().executeQuery(counter);

            if (rc.next()){
                String countString = rc.getString(1);
                int count = Integer.parseInt(countString);
                if (session.isNew())
                {
                    count++;
                    counter="UPDATE counter SET counter = " + count ;
                    con.createStatement().execute(counter);
                }
            out.println(count);
       %>個顧客 | © 活久見
    </div>
  </footer>
  <script async>
    var $ONLINE = $(".ad");
    var $WIN = $(window);
    var $DOCUMENT = $(document);
    var POS;
    var $BTN = $("#BTN");
    var $NAVNAV = $("#NAVNAV");
    var $goTOP = $("#goTOP");
    var $HTML = $("html,body");
    var $FOOTER = $("#FOOTFOOT");
    var $BottomNAV = $("#BottomNAV");
    var $MOBI = $("#mobile-contact");
    var $IMG01 = $("#img01");

    POS = $WIN.height() - 340;
    $ONLINE.delay(2000).stop(true, false).animate({
      top: POS
    }, 800, "easeOutBack");

    $WIN.on("scroll resize", onSERVICE);
    onSERVICE();

    function onSERVICE() {
      if ($WIN.innerWidth() > 768) {
        var POS = $WIN.scrollTop();
        if (POS > 520) {
          $IMG01.fadeIn(800);
        } else {
          $IMG01.fadeOut(800);
        }
        POS = $WIN.height() - 450;
        $ONLINE.stop(true, false).animate({
          top: POS + $WIN.scrollTop()
        }, 800, "easeOutBack");
      }
    }


    $BTN.on("click", OPENOPEN);

    function OPENOPEN() {
      $NAVNAV.slideDown(200);
      $NAVNAV.on("click", CLOSECLOSE);
    }

    function CLOSECLOSE() {
      $NAVNAV.slideUp(200);
      $NAVNAV.off("click");
    }

    $WIN.on("scroll resize", function CLEARSTYLE() {
      if ($WIN.innerWidth() < 667) {
        $BottomNAV.load("/course/mobile-contact.php");
      }
      if ($WIN.innerWidth() > 667) {
        $NAVNAV.removeAttr("style");
        //$MOBI.remove();
      }
    });


    $(document).ready(function () {
      if ($WIN.innerWidth() < 667) {
        $BottomNAV.load("/course/mobile-contact.php");
      }
    })

    $goTOP.on("click", goTOP);
    $IMG01.on("click", goTOP);

    function goTOP() {
      $HTML.animate({
        scrollTop: 0
      }, 500);
      return false;
    }
  </script>
</body>

</html>
<%
    con.close();
}
	}}
    catch (SQLException sExec)
    {
        out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err)
{
   out.println("class錯誤"+err.toString());
}
%>