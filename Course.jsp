<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>document.createElement("capgeminiLandD")</script>
<title>Course Registration</title>
<style>
body {
    background-color: #CCCCFF;
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
<capgeminiLandD>Register Courses for L&D with AI</capgeminiLandD>

<table align="center">
<tr>
<td>
<h2>Course Details</h2>
</td>
</tr>

<tr>
<td>Course Name:</td>
<td><input type="text" name="FirstName" value="Python" style="width: 300px"></td>
</tr>
<tr>
<td>Course Duration:</td>
<td><input type="text" name="EmployeeID" value="3" style="width: 300px">Hr(s)</td>
</tr>
<tr>
<td>Course accessing URL:</td>
<td><input type="text" name="Experience" value="http://www.python.com/tutorials/lessons/" style="width: 300px"></td>
</tr>
<tr>
<td>Course Details:</td>
<td><textarea rows="8" cols="40"></textarea></td>
</tr>
<tr>
<td>skills:</td>
<td><textarea rows="8" cols="40"></textarea></td>
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
