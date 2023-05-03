<% 
                   String changeBatch = request.getParameter("batchChange");
                   String logOut = request.getParameter("logout");
                   
                   try{
                       if (changeBatch != null) {
                           response.sendRedirect("Home.jsp");
                        }

                        if (logOut != null) {
                            response.setHeader("Cache-Control","no-cache, no-store");
                            session.setAttribute("user",null);
                            response.sendRedirect("index.jsp");
                        }
                     
                   }
                   catch(Exception e){
                        e.printStackTrace();
                   }
                   
               %>   
    