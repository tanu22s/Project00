<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page isELIgnored="false"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body class="img-responsive" background="/ORSProject0/resources/image/IMG/prp.jpg"
	style="background-repeat: no-repeat; background-size: cover;" >
	
	<br>
	
	<sf:form method="post" commandName="form">

	<div class="container">
	

		<div align="center">
		<c:if test="${not empty success }">
			<div class="alert alert-success" role="alert"
				style="width: 35%; margin-left: 0%; font-size: 136% ; margin-bottom: 5px;">
				<b><b class="success">${success}</b></b>
			</div>
		</c:if>
		<c:if test="${not empty error }">
			<div class="alert alert-danger" role="alert"
				style="width: 35%; margin-left: 0%; font-size: 140%; margin-bottom: 5px;">
				<b><b class="error">${error}</b></b>
			</div>
		</c:if>

		<c:if test="${!empty message}">
			<div class="alert alert-danger" role="alert"
				style="width: 35%; margin-left: 0%; font-size: 150%;">
				<b class="error"><s:message code ="frontcontroller.message"></s:message></b>
			</div>
		</c:if>

		</div>
		
		<br>
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<div class="card c1">
			<div class="card-body c1">
					<legend align="center">
						<font size="5"><b><s:message code="label.login.account"></s:message></b></font>
					</legend>

					<div class="form-group" align="left">
					<s:message code="login.placholder.email" var="email"></s:message>
						<label for="username-email"><s:message code="label.loginId" /></label><font color="red">
							*</font>
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> 
								
								<sf:input path="login" class="form-control" name="login"
									placeholder="${email}"/>
						</div>
						<font color="red"><sf:errors path="login" cssClass="error" /></font>
					</div>

					<s:message code="label.password" var="password"></s:message>
					<div class="form-group" align="left">
						<label for="password"><s:message code="label.password" /></label><font color="red"> *</font>
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-lock"></i></span> 	
								<sf:password path="password" placeholder="${password}" class="form-control" />
								
						</div>
						<font color="red"><sf:errors path="password" cssClass="error" /></font>
					</div>

					<div class="form-group" align="left">
						<a href="<c:url value="/ForgetPassword"></c:url>"> <b><font
								size="3"><u><s:message code="login.lebel.forgetMyPassword"></s:message></u></font></b></a>
					</div>

					<div class="form-group text-center">
						
						<button type="submit" class="btn btn-success" name="operation"
							value="SignIn"><s:message code="login.lebel.signIn" ></s:message></button>
						
						<button class="btn btn-warning">
							<a href="<c:url value="/Login"></c:url>" style="color:white">
							<s:message code="button.reset"></s:message></a>
						</button>
						

					</div>
				</div>
			</div>
		</div>

	</div>
			<style>
.c1 {
	border-width: 5px;
	border-style: ridge;
	border-radius: 25px;
}
.btn{
padding: 20px;
}
.card{
background-color: #ECEFF1;
}
body{
background-image: url"/ORSProject0/resources/image/200612-dsg-workshop.jpg")
}

</style>
			

	</sf:form>

</body>
</html>


