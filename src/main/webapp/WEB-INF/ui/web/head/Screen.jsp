<%@ page language="java" contentType="text/xml;charset=utf-8" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="<%=basePath%>xsl/ui/web/xsl/XMLWeb_xmlWeb.xsl"?>
<Screen xmlns="http://a0002-02469:8000/JAVA WEB/WEB-INF/ui/web/head/Screen.jsp">
	<View display="淘宝管理">
		<Applet display="发布产品" link=""/>
	</View>
	<View display="邮件管理">
		<Applet display="邮箱服务器管理" link=""/>
	</View>
	<View display="论坛管理">
		<Applet display="发布产品" link=""/>
	</View>
</Screen>