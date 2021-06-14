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
      if(session.getAttribute("ID")!=null){
          if( request.getParameter("gdsize") != "" && request.getParameter("gdsize") !=null ){

          String new_gdNAME=new String(request.getParameter("gdNAME").getBytes("ISO-8859-1"),"UTF-8");//接收前端傳來的商品名稱
          String new_gdsize=request.getParameter("gdsize");//接收前端傳來的商品尺寸
          String new_gdnum=request.getParameter("gdnum");//接收前端傳來的商品數量
          String new_gdid=request.getParameter("gdID");
          int goodnum = Integer.parseInt(new_gdnum);
      
          sql = "SELECT * FROM bb.goods WHERE goodname = '"+new_gdNAME+"'";
          ResultSet rs = con.createStatement().executeQuery(sql);
          String new_price="", new_stock="", new_name="", new_size="";
          while(rs.next())
          {
            new_price = rs.getString("price");
            new_stock = rs.getString("quan");
            new_name = rs.getString("goodname");
          }
          int goodprice = Integer.parseInt(new_price);
          int goodstock = Integer.parseInt(new_stock);


           
              if(goodnum <= goodstock)
              {
                int sum = goodnum*goodprice;
                sql="INSERT `cart` (`goodname`, `goodID`, `goodsize` , `price`, `memID`, `num`)";
                sql+="VALUE ('"+new_name+"', ";
                sql+="'"+new_gdid+"', ";
                sql+="'"+new_gdsize+"', ";
                sql+="'"+sum+"', ";
                sql+="'"+session.getAttribute("ID")+"', ";
                sql+="'"+goodnum+"') ";
                con.createStatement().execute(sql);
                out.println("<SCRIPT LANGUAGE='JavaScript'>");
                out.println("alert('已加入購物車！')");
                out.println("history.back();");
                out.println("</SCRIPT>");

                con.close();
              }
              else
              {
                out.println("<SCRIPT LANGUAGE='JavaScript'>");
                out.println("alert('庫存數量不足！但很快會進行補貨唷！')");
                out.println("history.back();");
                out.println("</SCRIPT>");
              }
            }

          else{
          out.println("<SCRIPT LANGUAGE='JavaScript'>");
          out.println("alert('請完整選擇尺寸')");
          out.println("history.back();");
          out.println("</SCRIPT>");
      } 
            
        }
        

    else
            {
              con.close();
              out.println("<SCRIPT LANGUAGE='JavaScript'>");
              out.println("alert('請先登入！')");
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