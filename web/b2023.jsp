<html>
    <head>
        <title>Batch 2023</title>
        <%@  page import="java.sql.*"%>
        <%@  page import="java.util.*"%>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">  
                <form action="batch.jsp" method="POST" >
            <div>

               <% 
                   try{
                       Class.forName("com.mysql.jdbc.Driver");
                       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/users","root","password");
                       Statement s = con.createStatement();
                       String sql="Select * from batch2023";
                       ResultSet rs = s.executeQuery(sql);
                       %>
                       <table class="table">
                           <h2>Company List</h2>
                           <br><br>
                       <thead>
                        <tr>
                           <th>Name</th>
                           <th>Number of Candidates</th>
            
                        </tr>
                        </thead>
                        <tbody>
                            <% while(rs.next()) { %>
                        <tr>
                            <td><%= rs.getString("Cname") %></td>
                            <td><%= rs.getInt("candNo") %></td>
                        </tr>
                            <% } %>
                        </tbody>
                        </table>
                        
                          <div class="form-group">        
                        <button type="submit" class="btn btn-success" name="batchChange">Change Batch</button>
                        </div>    
                        
                         <div class="form-group">        
                        <button type="submit" class="btn btn-success" name="logout">Log Out</button>
                        </div>    
                <%       
                   }
                   catch(Exception e){
                       out.println(e);
                   }
                   
               %>   
        
         
          
           </div>       
           </div>  
               </div>
    </body>
</html>