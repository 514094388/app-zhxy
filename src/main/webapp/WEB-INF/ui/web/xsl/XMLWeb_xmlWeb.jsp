<%@ page language="java" contentType="text/xml;charset=utf-8" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="<%=basePath%>xsl/ui/web/xsl/XMLWeb_xmlWeb.xsl"?>
<Agreement xmlns="http://a0002-02469:8000/JAVA WEB/WEB-INF/ui/web/xsl/XMLWeb_xmlWeb.jsp">
	<Company>日立电梯（中国）有限公司</Company>
	<AgreementNum>AH245335-CH</AgreementNum>
	<ElevatorNum>AO32523</ElevatorNum>
</Agreement>

