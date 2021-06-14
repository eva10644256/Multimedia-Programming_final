<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
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
			out.println("連線失敗");
		else
        {
            sql="use `bb`";
            con.createStatement().execute(sql);
            String new_goodID=request.getParameter("pdid");
            String new_goodname=new String(request.getParameter("pdname").getBytes("ISO-8859-1"),"UTF-8");
            String new_price=request.getParameter("pdprice");
            String new_goodsize=request.getParameter("pdsize");
            String new_quan=request.getParameter("pdquan");
            String new_num=request.getParameter("pdnum");
            String new_intro=new String(request.getParameter("pdintro").getBytes("ISO-8859-1"),"UTF-8");
            String new_type=request.getParameter("pdtype");
            String new_kind=request.getParameter("pdkind");
            String new_path=request.getParameter("pdpath");


            sql = "SELECT * FROM bb.goods ";
            ResultSet rs = con.createStatement().executeQuery(sql);
            while(rs.next())
            {
                sql="INSERT `goods` (`goodID`, `goodname`, `price`, `goodsize`, `quan`, `salenum`, `intro`, `type`, `kind`, `path` )";
                sql+="VALUE ('"+new_goodID+"', ";
                sql+="'"+new_goodname+"', ";
                sql+="'"+new_price+"', ";
                sql+="'"+new_goodsize+"', ";
                sql+="'"+new_quan+"', ";
                sql+="'"+new_num+"', ";
                sql+="'"+new_intro+"', ";
                sql+="'"+new_type+"', ";
                sql+="'"+new_kind+"', ";
                sql+="'"+new_path+"') ";
                con.createStatement().execute(sql);
                out.println("<SCRIPT LANGUAGE='JavaScript'>");
                out.println("alert('新增商品成功！')");
                out.println("</SCRIPT>");
                response.setHeader("Refresh","0;firm.jsp");
            }



            con.close();
        }
	}
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