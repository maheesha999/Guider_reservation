<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmed Page</title>
<link rel="stylesheet" type="text/css" href="Css/header.css">
<link rel="stylesheet" type="text/css" href="Css/footer.css">
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: sans-serif;
}

h1 {
	font-size: 2rem;
	font-weight: 700;
	text-align: center;
}

label {
	font-size: 1rem;
	font-weight: 500;
}

input, textarea {
	font-size: 1rem;
	font-weight: 400;
}

form {
	max-width: 1000px;
	margin: 0 auto;
	padding: 1rem;
}

label, input, textarea {
	display: block;
	width: 100%;
	margin-bottom: 1rem;
}

input, textarea {
	padding: 0.5rem;
	border: 1px solid #ccc;
	border-radius: 0.25rem;
}

textarea {
	height: 5rem;
}

input[type="submit"] {
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 0.25rem;
	cursor: pointer;
}

body {
	background-color: #a4e9f1;
}

h1 {
	color: #333;
}

label {
	color: #424141;
}

input::placeholder,
textarea::placeholder {
    color: #999;
    font-weight: 300;
}

input, textarea {
	color: #333;
}

input[type="submit"] {
	transition: all 0.2s ease-in-out;
}

input[type="submit"]:hover {
	background-color: #04376a;
}

.btn {
	display: flex;
	align-items: center;
}

.btn input[type="submit"] {
	margin-right: 10px;
}
</style>
</head>
<body>

	<%@ include file="header.jsp"%>
	<%@ include file="navigation.jsp"%>
	
	<c:forEach var="rent" items="${rentdetails}">
		<br>
		<br>
		<br>
		
		<h1>Confirmed</h1>
		
		<form id="rentalForm" action="FormAction" method="post">

			<label for="name">Reservation ID:</label> 
			<input type="text" id="urid" value="${ rent.id}" name="urid" readonly> 
			
			<label for="name">Customer Name:</label> 
			<input type="text" id="uname" placeholder="Not Inserted" value="${ rent.name}" name="uname" readonly>
			<!--  -->
			<!--  -->
			<label for="pick-loc" style="color: blue;">Location:</label> 
			<select id="location" name="location" style="width:150px;height:26px">
				<c:choose>
					
					<c:when test="${rent.location  eq 'matara'}">
						<option value="matara" selected>Matara</option>
					</c:when>
					<c:when test="${rent.location  eq 'galle'}">
						<option value="galle" selected>Galle</option>
					</c:when>
					<c:when test="${rent.location  eq 'weligama'}">
						<option value="weligama" selected>Weligama</option>
					</c:when>
					<c:when test="${rent.location  eq 'kamburugamuwa'}">
						<option value="kamburugamuwa" selected>Kamburugamuwa</option>
					</c:when>
					<c:when test="${rent.location  eq 'dickwella'}">
						<option value="dickwella" selected>Dickwella</option>
					</c:when>
					
					<c:otherwise>
						<option value="matara">Matara</option>
						<option value="galle">Galle</option>
						<option value="weligama">Weligama</option>
						<option value="kamburugamuwa">Kamburugamuwa</option>
                        <option value="dickwella">Dickwella</option>
					</c:otherwise>
					
				</c:choose>
			</select>
			<!--  -->
			<!--  -->
			<br>
        <br>
        <br>
        
		<label for="indate" style="color: blue;">Check in date:</label>
        <input type="date" id="indate"placeholder="Check in date" autocomplete="off" value="${ rent.checkindate}" name="indate" required>
        <br>
        <br>
        <br>
        
        <label for="outdate" style="color: blue;">Check out date:</label>
        <input type="date" id="outdate"placeholder="Check out date:" autocomplete="off" value="${ rent.checkoutdate}" name="outdate" required>
        <br>
		<br>
        <br>
<!--  -->
<!--  -->
<!--  -->
        <br>
		<br>
        <br>
			<label for="email">Email:</label>
			<input type="text" id="email" placeholder="Not Inserted" value="${ rent.email}" name="uemail" readonly> 
			
			<label for="phone">Phone:</label>
			<input type="text" id="phone"placeholder="Not Inserted" value="${ rent.phone}" name="uphone"readonly>
			
			<label for="message">Additional Details:</label>
			<textarea id="message" placeholder="Not Inserted" name="uotherD" readonly>${ rent.other}</textarea>
			
			<div class="btn">
				<input type="submit" name="action" value="PAY"> 
				<input type="submit" name="action" value="UPDATE RIDE">
				<input type="submit" name="action" value="DELETE RIDE">
			</div>-->
				
		</form>
		
	</c:forEach>
	
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	
	<%@ include file="footer.jsp"%>
	
</body>
</html>