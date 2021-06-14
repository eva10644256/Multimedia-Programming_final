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
	  
      sql = "SELECT orderID FROM bb.order ORDER BY orderID DESC LIMIT 0 , 1";
      ResultSet rs =con.createStatement().executeQuery(sql);	  
      int j = 0;
      while(rs.next())
      {
        String a = rs.getString("orderID");
        j = Integer.parseInt(a);
        j+=1;
      }
	  
      String new_name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
      String new_addr=new String(request.getParameter("addr").getBytes("ISO-8859-1"),"UTF-8");
      String new_tel=request.getParameter("tel");
      String new_email=request.getParameter("email");
	    String new_note=new String(request.getParameter("elsetosay").getBytes("ISO-8859-1"),"UTF-8");
      

      sql = "SELECT cart.goodname, cart.goodsize, cart.price, cart.num, goods.quan, goods.goodID FROM bb.cart JOIN bb.goods ON cart.goodID = goods.goodID WHERE cart.memID ='"+session.getAttribute("ID")+"'";
      ResultSet rs2 = con.createStatement().executeQuery(sql);
      while(rs2.next())
      {
        sql="INSERT `order` (`orderID`, `memID`, `goodname`, `price`, `goodsize`, `quan`, `memmail`, `sendname`, `address`, `phone`, `note`)";
        sql+="VALUE ('"+j+"', ";
        sql+="'"+session.getAttribute("ID")+"', ";
        sql+="'"+rs2.getString("goodname")+"', ";
        sql+="'"+rs2.getString("price")+"', ";     
        sql+="'"+rs2.getString("goodsize")+"', ";
        sql+="'"+rs2.getString("num")+"', ";
        sql+="'"+new_email+"', ";
        sql+="'"+new_name+"', ";
        sql+="'"+new_addr+"', ";
        sql+="'"+new_tel+"', ";
        sql+="'"+new_note+"') ";			
        con.createStatement().execute(sql);
        
        int a = Integer.parseInt(rs2.getString("num"));
        int old_stock = Integer.parseInt(rs2.getString("quan"));
        int left_st = old_stock - a;

        sql = "UPDATE goods SET quan = '"+left_st+"' WHERE goodID = '"+rs2.getString("goodID")+"'";
        con.createStatement().execute(sql);
      }

      sql = "DELETE FROM `cart` WHERE `memId`='"+session.getAttribute("ID")+"'";
      con.createStatement().execute(sql);

      out.println("<SCRIPT LANGUAGE='JavaScript'>");
      out.println("alert('下單成功 感謝購買！！')");
      out.println("window.document.location.href='index.jsp';");
      out.println("</SCRIPT>");

    }
    con.close();
	}
	catch (SQLException sExec) {
			out.println("SQL錯誤"+sExec.toString());
	}
}
catch (ClassNotFoundException err) {
	out.println("class錯誤"+err.toString());
}
%>