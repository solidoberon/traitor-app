<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring Example Index JSP Web page</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<table>
  <thead>
    <tr>
      <th>ID</th>
      <th>First name</th>
      <th>Last name</th>
      <th>Street</th>
      <th>University</th>
      <th>IBAN</th>
    </tr>
  </thead>
  <tbody> 
  	<c:forEach items="${personlist}" var="person">
     <tr>
       <td><c:out value="${person.getId()}" /></td>
       <td><c:out value="${person.getFirst_name()}" /></td>
       <td><c:out value="${person.getLast_name()}" /></td>
       <td><c:out value="${person.getStreet()}" /></td>
       <td><c:out value="${person.getUniversity()}" /></td>
       <td><c:out value="${person.getIban()}" /></td>
     </tr>
   </c:forEach>
   
  </tbody>
</table>

</html>