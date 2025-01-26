<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<body>

	    <%
        // Retrieve the session object
        HttpSession currentsession = request.getSession(false);

        if(currentsession != null){
        	currentsession.invalidate();
        }
        
				//Redirect to the Html Page....
	            response.sendRedirect("index.html");
	        
	    %>

</body>
</html>