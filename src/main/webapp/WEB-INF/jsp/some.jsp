<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/jsp/order/taglibs.jsp" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form:form method="post" action="some.html" commandName="somedata" >
	    <table>
	    <tr>
	        <td>name</td>
	        <td><form:input path="name" /></td>
	    </tr>
	    <tr>
	        <td>age</td>
	        <!--Notice, this is normal html tag, will not be bound to an object -->
	        <td><input name="age" type="text"/></td>
	    </tr>
	    <tr>
	        <td colspan="2">
	            <input type="submit" value="send"/>
	        </td>
	    </tr>
	</table>
	</form:form>
	
	<!-- output 
	<table>
    <tr>
        <td>name</td>
        <td>${somedata.name}</td>
    </tr>
    <tr>
        <td>age</td>
        <td>${age}</td>
    </tr>
 	</table> -->
	
</body>
</html>