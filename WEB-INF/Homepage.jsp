
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type"
		content="text/html; charset=utf-8" />
		<title> Erehwon | Number 1 Online shopping site!</title>
		<link rel="stylesheet" href="navbar1.css" type="text/css" />
	</head>
    <body>
		<h1> Welcome to Erehwon! Best shopping site easymode!</h1>
    <div id ="navbar1" class="center">
    	<ul class="navbar1">
        <li class="navbar1"><a class="navbar1" href="DVDs.html">DVDs</a></li>
        <li class="navbar1"><a class="navbar1" href="CDs.html">CDs</a></li>
        <li class="navbar1"><a class="navbar1" href="Games.html">Games</a></li>
        <li class="navbar1"><a class="navbar1" href="Books.html">Books</a></li>
      </ul>
      </div>
      <div id="navbar2" class="center">
      <ul class="navbar2">
      	<li class="navbar2"><a class="navbar2" href="Homepage.jsp">Homepage</li></a>
      	</ul>
      	</div>
		<h2> Now I am going to display all the products on the site! </h2>
		<h2>(For now is going to be the junk of books).</h2>
		  
		
		<div style="position: absolute; top: 0; right: 0; width: 1000px; text-align:right;">
		 <a href="loginpage.html"><h3>Login</h3></a>
		  <%= session.getAttribute( "username" ) %>
		 </div>
		
		
		<sql:query var="result">
			select * from inventory;
			</sql:query>
			
		<table border="1" width="100%">
			<tr>
			  <th>Code</th>
			  <th>Author</th>
			  <th>Description</th>
			  <th>Other field(Probs price)</th>
		  </tr>
			  
			  <c:forEach var = "row" items = "${result.rows}">
			    <tr>
				  <td><c:out value = "${row.item_code}"/></td>
				  <td><c:out value = "${row.item_author}"/></td>
				  <td><c:out value = "${row.item_description}"/></td>
				  <td><c:out value = "${row.item_price}"/></td>
				</tr>
				</c:forEach>
				</table>
		 
		

		
</body>
</html>
