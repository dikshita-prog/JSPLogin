<% 
                   String year=request.getParameter("Batch");
                   
                   try{
                       
                       if(year.equals("2023"))
                           response.sendRedirect("b2023.jsp");
                       else if(year.equals("2022"))
                          response.sendRedirect("b2022.jsp");
                       else if(year.equals("2021"))
                           response.sendRedirect("b2021.jsp");
                   }
                   catch(Exception e){
                        e.printStackTrace();
                   }
                   
               %>   
    