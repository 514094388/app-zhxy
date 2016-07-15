<%@ page language="java" import="java.util.Map,java.util.List,com.sql.testPrac.SqlTestPrac,org.springframework.web.context.support.WebApplicationContextUtils,org.springframework.context.ApplicationContext" pageEncoding="UTF-8"%>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
 <%@ page import="org.springframework.context.ApplicationContext"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	ApplicationContext ac2 = WebApplicationContextUtils.getWebApplicationContext(this.getServletContext());
	SqlTestPrac sqlTestPrac = (SqlTestPrac)ac2.getBean("sqlTestPrac");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <base href="<%=basePath%>">
    
    <title>创建Java项目</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1"  />
	<jsp:include page="../import/Import.jsp" />
	<link href="css/testPrac/Practice.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
  	<div id="top_bg">
	<jsp:include page="../framework/TopMenu.jsp" />
	<jsp:include page="../framework/TopMenuItem.jsp" />
	<div id="practice">
		<table>
		<%
			List exercises_1 = sqlTestPrac.getExercises(request.getParameter("cid"));
			List choices_1 = null;
			Map exercise_1 = null;
			Map choice_1 = null;
			for(int i=0;i<exercises_1.size();i++){
				exercise_1 = (Map)exercises_1.get(i);
				out.println("<tr><td>" + (i+1) + "、</td><td>" + exercise_1.get("TOPIC") + "</td></tr>");
				choices_1 = sqlTestPrac.getChoice((String)exercise_1.get("ID"));
				for(int j=0;j<choices_1.size();j++){
					choice_1 = (Map)choices_1.get(j);
					out.print("<tr><td><input type=\"radio\" name=\"choice_" + choice_1.get("ID") + "\"/>" + choice_1.get("OPTN") + "、</td><td>" + choice_1.get("VALUE") + "</td>");
					j++;
					if(j<choice_1.size()){
						choice_1 = (Map)choices_1.get(j);
						out.print("<td><input type=\"radio\" name=\"choice_" + choice_1.get("ID") + "\"/>" + choice_1.get("OPTN") + "、</td><td>" + choice_1.get("VALUE") + "</td></tr>");
					}else{
						out.print("<td></td><td></td></tr>");
					}
				}
			}
		%>
		</table>
	</div>
	<div id="end_bg">
		<p>适用浏览器：IE8、360、FireFox、Chrome、Safari、Opera、傲游、搜狗、世界之窗. </p>
		<p>来源：<a href="http://sc.chinaz.com/" target="_blank">站长素材</a></p>
		
	</div>

	</div>
  </body>
</html>
