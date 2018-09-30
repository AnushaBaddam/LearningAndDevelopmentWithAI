<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>document.createElement("capgeminiLandD")</script>
<title>Employee_Details</title>
<style>
body {
    background-color: #D3D3D3;
}

h1 {
    color: white;
    text-align: center;
}

p {
    font-family: verdana;
    font-size: 20px;
}

div{

}
capgeminiLandD {
    display: block;
    background-color: #505050;
    padding-left: 20px;
    padding-right:30px;
    padding-bottom: 30px;
    padding-top: 30px;
    font-size: 30px;    
	width:100%;
	height: 15px;
	color: #ffffff;
} 

</style>
</head>
<body>
<form action="basic.jsp" style="width: 100%">
<capgeminiLandD>Capgemini Learning And Development</capgeminiLandD>

<table align="center">
<tr>
<td>
<h2>Employee Details</h2>
</td>
</tr>

<tr>
<td>First name:</td>
<td><input type="text" name="FirstName" value="Anusha" style="width: 300px"></td>
</tr>
<tr>
<td>Last name:</td>
<td><input type="text" name="LastName" value="Baddam" style="width: 300px"></td>
</tr>
<tr>
<td>Employee ID:</td>
<td><input type="text" name="EmployeeID" value="79678" style="width: 300px"></td>
</tr>
<tr>
<td>Experience:</td>
<td><input type="text" name="Experience" value="4" style="width: 300px"></td>
</tr>
<tr>
<td>skills:</td>
<td><textarea rows="10" cols="50"></textarea></td>
</tr>
<tr>
<td>&nbsp;</td>
<td><input type="submit" value="Submit">
<button id="mybtn" type="button">Next</button>

</td></tr>

</table>
<script type="text/javascript">
    
	 function myFunction(mybtn){
       // Do your stuff here with the clicked button
       location.href='Course_Details.html';
    }
</script>

<p id="demo"></p>

</form>



</body>
</html>
