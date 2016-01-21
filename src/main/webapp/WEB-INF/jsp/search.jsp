<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%@ include file="/WEB-INF/jsp/order/taglibs.jsp" %>


<!-- very important -->
<%@ include file="/WEB-INF/jsp/order/taglibs.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@ include file="/WEB-INF/jsp/order/meta.jsp" %>
	<title>Search - Europeana Music</title>
</head>
<body>

	<form:form method="post" commandName="somedata">
	    <table>
	    <tr>
	        <td>name</td>
	        <td><form:input path="name" /></td>
	    </tr>
	    <tr>
	        <td colspan="2">
	            <input type="submit" value="send"/>
	        </td>
	    </tr>
	</table>
	</form:form>
	 
	<table>
	    <tr>
	        <td>name</td>
	        <td>${somedata.name}</td>
	    </tr>
 	</table>
 	
 	
</body>
</html>