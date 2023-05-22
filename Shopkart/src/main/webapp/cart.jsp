
<%@page import="Product.Cart"%>
<%@page import="Product.Product"%>
<%@page import="java.util.List"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shopkart</title>
<link rel="stylesheet" href="Main.css">
</head>
<body>

		
		<%	Cart c=(Cart)session.getAttribute("cart"); 
			List itemsList=c.getItems();
		%>
			
		
		
		<header>
			<h1>ShopKart</h1>
			<nav>
			  <ul>
			    <li>
			    	 
			    </li>
			  </ul>
			</nav>

		</header>
		
	
		
		<main>
			<%
				for(int i=0; i<itemsList.size(); i++) {
					String p=((Product)(itemsList.get(i))).getPname();
			%>
			<section class="product">
				<h2><%= p %></h2>
				<p><%= ((Product)(itemsList.get(i))).getPprice() %></p>
				<span class="price">Test</span>
			</section>
			<%
				  }                              
			%>
			
			
		</main>
		
		<br>
		<table>
				<tfoot>
		            <tr>
		                <td colspan="3">Total:</td>
		           
		                <td><h1><%= c.getTotal() %></h1></td>
		            </tr>
		        </tfoot>
 
		</table>
		<br>
		<form action ="order">

    <input type="Submit" value="Place Order">
    </form>

		
		
	</body>
</html>