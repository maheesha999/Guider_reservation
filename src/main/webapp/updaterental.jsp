<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update reservation Details </title>
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

input,
textarea {
  font-size: 1rem;
  font-weight: 400;
}

input::placeholder,
textarea::placeholder {
    color: #999;
    font-weight: 300;
}

form {
  max-width: 1000px;
  margin: 0 auto;
  padding: 1rem;
}

label,
input,
textarea {
  display: block;
  width: 100%;
  margin-bottom: 1rem;
}

input,
textarea {
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
  background-color: #b9dbf9;
}

h1 {
  color: #333;
}

label {
  color: #424141;
}

input,
textarea {
  color: #333;
}

input[type="submit"] {
  transition: all 0.2s ease-in-out;
}

input[type="submit"]:hover {
  background-color: #04376a;
}

</style>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="navigation.jsp" %>	
	<c:forEach var="rent" items="${rentdetails}">
<br>
<br>
<br>
	<h1 style="color: blue;">UPDATE RESERVATION DETAILS</h1>
	<form id="rentalForm" action="UpdateRentServlet" method="post">
	
	    <label for="name">Reservation ID:</label> 
		<input type="text" id="urid" value="${ rent.id}" name="urid" readonly>
		
		<label for="name">Customer Name:</label> 
		<input type="text" id="uname"  autocomplete="off" placeholder="Your name"  value="${ rent.name}" name="uname" required> 
		<!--  -->
		<!--  -->
		<!--  -->
		<label for="pick-loc" style="color: blue;">Location:</label>
<select id="location" name="location" style="width:150px;height:26px">
    <c:choose>
        <c:when test="${rent.location eq 'matara'}">
            <option value="matara" selected>Matara</option>
            <option value="galle">Galle</option>
            <option value="weligama">Weligama</option>
            <option value="kamburugamuwa">Kamburugamuwa</option>
            <option value="dickwella">Dickwella</option>
        </c:when>
        <c:when test="${rent.location  eq 'galle'}">
            <option value="matara">Matara</option>
            <option value="galle" selected>Galle</option>
            <option value="weligama">Weligama</option>
            <option value="kamburugamuwa">Kamburugamuwa</option>
            <option value="dickwella">Dickwella</option>
        </c:when>
        <c:when test="${rent.location  eq 'weligama'}">
            <option value="matara">Matara</option>
            <option value="galle">Galle</option>
            <option value="weligama" selected>Weligama</option>
            <option value="kamburugamuwa">Kamburugamuwa</option>
            <option value="dickwella">Dickwella</option>
        </c:when>
        <c:when test="${rent.location  eq 'kamburugamuwa'}">
            <option value="matara">Matara</option>
            <option value="galle">Galle</option>
            <option value="weligama">Weligama</option>
            <option value="kamburugamuwa" selected>Kamburugamuwa</option>
            <option value="dickwella">Dickwella</option>
        </c:when>
        <c:when test="${rent.location  eq 'dickwella'}">
            <option value="matara">Matara</option>
            <option value="galle">Galle</option>
            <option value="weligama">Weligama</option>
            <option value="kamburugamuwa">Kamburugamuwa</option>
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
<!--  -->
        <br>
        <br>
        <br>
        
		<label for="chechoutday" style="color: blue;">Check in date:</label>
        <input type="date" id="checkindate"placeholder="Check in date" autocomplete="off" value="${ rent.checkindate}" name="checkindate" required>
        <br>
        <br>
        <br>
        
        <label for="chechoutday" style="color: blue;">Check out date:</label>
        <input type="date" id="chechoutday"placeholder="Check out date:" autocomplete="off" value="${ rent.checkoutdate}" name="chechoutday" required>
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
		<input type="text" id="email" placeholder="abc@gmail.com" autocomplete="off"  value="${ rent.email}" name="uemail" required>

		<label for="phone">Phone:</label>
		<input type="text" id="phone"placeholder="07XXXXXXXX" pattern='[0-9]{10}' autocomplete="off" value="${ rent.phone}" name="uphone" required> 
		
		<label for="message">Additional Details:</label>
		<textarea id="message" placeholder="Seat capacity/ AC or Non AC/ Vehicle Type" autocomplete="off" name="uotherD">${ rent.other}</textarea>

		<input type="submit" name="action" value="UPDATE">
	</form>
	</c:forEach>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<%@ include file="footer.jsp" %>
</body>
</html>