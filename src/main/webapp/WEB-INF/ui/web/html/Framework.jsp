<%@ page language="java" import="java.util.*,org.jsoup.nodes.Document,org.springframework.beans.factory.annotation.Autowired" pageEncoding="UTF-8"%>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
 <%@ page import="org.springframework.context.ApplicationContext"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <base href="<%=basePath%>">
    
    <title>创建Java项目</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1"  />
	<jsp:include page="import/Import.jsp" />
	<script  type="text/javascript"> 
	    function tt(){
	    	alert("tttt");
	    }
	</script>
  </head>
  
  <body>
  	<div id="top_bg">
	<jsp:include page="framework/TopMenu.jsp" />
	<jsp:include page="framework/TopMenuItem.jsp" />
	<jsp:include page="framework/LeftMenu.jsp" />
	<jsp:include page="framework/Content.jsp" />
	<input type="button" name="button" value="tt" onclick="tt()">
	<form action="WebFrame/Index.dsr" Method="POST">
		<input type="text" name="test" value="中国"/>
		<input type="submit" name="submit" value="submit"/>
	</form>
	<div id="end_bg">
		<p>适用浏览器：IE8、360、FireFox、Chrome、Safari、Opera、傲游、搜狗、世界之窗. </p>
		<p>来源：<a href="http://sc.chinaz.com/" target="_blank">站长素材</a></p>
		
	</div>

	</div>
  </body>
</html>
