
<%@ page import="java.sql.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<%
    String username = request.getParameter("uname");
    String pass = request.getParameter("pass");
    SimpleDateFormat sdf = new SimpleDateFormat("ddMMyyyy");
    Date date = new Date(); 
    String sysDate = sdf.format(date);

    try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/users","root","password");
            String sql="Select * from login where uname=?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1,username);
            ResultSet rs=pst.executeQuery();
            if(rs.next() && pass.equals(sysDate)){
                session.setAttribute("user",username);
                response.sendRedirect("Home.jsp");
            }
            else{
                out.println("Incorrect username or password!!<br>");
                out.println("<a href='index.jsp'>Click here to go back to the login page</a>");
            }
            con.close();
            
        }catch(Exception e){
            out.println(e);
        }

%>