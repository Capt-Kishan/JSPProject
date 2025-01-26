<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel = "stylesheet" type = "text/css" href = "styles.css">
</head>
<body>

	    <%
        // Retrieve the session object
        HttpSession session1 = request.getSession(false);

        // Check if the session is not null and the username attribute is set
        if (session1 != null && session1.getAttribute("username") != null) {
            // Get the username from the session
            String username = (String) session1.getAttribute("username");
	    %>
	
	    <div class="container">
	     
		        <h1>Welcome, <%= username %>!</h1>
		        <p>We're delight.ed to have you on our platform. 🌟</p>
		        <h3>Explore, learn, and connect with our vibrant community! 🚀</h3>
		        
		        
		        <div class= "links">
			    	<p>Feel free to stay as long as you like, and when you're ready,</p> 
			        you can <a href="Logout.jsp">Logout</a> securely.
		    	</div>
	    
	    </div>
	    
	    
	
	    <%
	        } else {
	            // Redirect to the login page if the session is not valid
	            response.sendRedirect("Login.jsp");
	        }
	    %>

</body>
</html>