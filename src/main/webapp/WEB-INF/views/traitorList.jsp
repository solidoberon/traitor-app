<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Spring Example Index JSP Web page</title>
<!-- 	<link rel="stylesheet" type="text/css" href="style.css"> -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">	
	<link rel="stylesheet" type="text/css" href="DataTables/datatables.css">
	<script type="text/javascript" charset="utf8" src="jquery-3.5.1.min.js"></script>	
	<script type="text/javascript" charset="utf8" src="DataTables/DataTables-1.10.21/js/jquery.dataTables.min.js"></script>
<script src="childRows.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	
<!-- 	<script type="text/javascript">
		$(document).ready( function () {
	    	$('#dtResults').DataTable();
		} );
	</script> -->
	<style type="text/css" class="init">
		td.details-control {
			background: url('DataTables/DataTables-1.10.21/images/details_open.png') no-repeat center center;
			cursor: pointer;
		}
		tr.shown td.details-control {
			background: url('DataTables/DataTables-1.10.21/images/details_close.png') no-repeat center center;
		}
	</style>
</head>
	<body>
		<div class="container mb-3 mt-3">
			<table id="dtResults" class="table table-dark table-hover table-bordered dt-responsive" cellspacing="0" width="100%">
			  <thead>
			    <tr>
			      <th></th>
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
			       <td></td>
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
		</div>
	</body>
</html>