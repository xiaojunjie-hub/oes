<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="cn.util.Const"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<title>在线教育学习系统</title>
<link href="<%=Const.LOGROOT%>css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<!-- -->
<script>var __links = document.querySelectorAll('a');function __linkClick(e) { parent.window.postMessage(this.href, '*');} ;for (var i = 0, l = __links.length; i < l; i++) {if ( __links[i].getAttribute('data-t') == '_blank' ) { __links[i].addEventListener('click', __linkClick, false);}}</script>
<script src="<%=Const.LOGROOT%>js/jquery.min.js"></script>
<script>$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});	  
});
</script>
</head>
<body>
<!-- contact-form -->	
<div class="message warning">
<div class="inset">
	<div class="login-head">
		<h1>在线教育学习系统</h1>
		 <div class="alert-close">  </div> 			
	</div>
		<form action="<%=Const.ROOT%>user/login" method="post"  enctype="multipart/form-data">
			<li>
				<input type="text" class="text" name="username" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}"><a  class=" icon user"></a>
			</li>
				<div class="clear"> </div>
			<li>
				<input type="password" name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"> <a  class="icon lock"></a>
			</li>
			<div class="clear" style="color: #F00">${wrong }</div>
			<div class="clear" style="color: #green">${success }</div>
			<div class="submit">
				<input type="submit" onclick="myFunction()" value="登录" >
				<h4><a href="#"></a></h4>
						  <div class="clear">  </div>	
			</div>
				
		</form>
		</div>					
	</div>
	</div>
	<div class="clear"> </div>
<!--- footer --->
<div class="footer">
	<p>Copyright &copy; 在线教育学习系统.</p>
</div>

</body>
</html>