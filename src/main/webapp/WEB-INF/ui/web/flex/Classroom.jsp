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
	<jsp:include page="../html/import/Import.jsp" />
	<link href="<%=basePath%>css/flex/classroom/classroom.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=basePath%>js/flex/swfobject.js"></script>
    <script type="text/javascript">
        <!-- For version detection, set to min. required Flash Player version, or 0 (or 0.0.0), for no version detection. --> 
        var swfVersionStr = "10.0.0";
        <!-- To use express install, set to playerProductInstall.swf, otherwise the empty string. -->
        var xiSwfUrlStr = "<%=basePath%>swf/playerProductInstall.swf";
        var flashvars = {};
        var params = {};
        params.quality = "high";
        params.bgcolor = "#ffffff";
        params.allowscriptaccess = "sameDomain";
        params.wmode="transparent";
        var attributes = {};
        attributes.id = "Classroom";
        attributes.name = "Classroom";
        attributes.align = "middle";
        swfobject.embedSWF(
            "<%=basePath%>swf/Classroom.swf", "flashContext", 
             "100%", "700", 
             swfVersionStr, xiSwfUrlStr, 
             flashvars, params, attributes);
		<!-- JavaScript enabled so display the flashContent div in case it is not replaced with a swf object. -->
		swfobject.createCSS("#flashContext", "display:block;text-align:left;");
     </script>
  </head>
  
  <body>
  	<div id="top_bg">
	<jsp:include page="../html/framework/TopMenu.jsp" />
	<jsp:include page="../html/framework/TopMenuItem.jsp" />
	<div id="classroom">
		<div id="flashContext">
        	<p>
	        To view this page ensure that Adobe Flash Player version 
			10.0.0 or greater is installed. 
			</p>
			<script type="text/javascript"> 
			var pageHost = ((document.location.protocol == "https:") ? "https://" :	"http://"); 
			document.write("<a href='http://www.adobe.com/go/getflashplayer'><img src='" 
				+ pageHost + "www.adobe.com/images/shared/download_buttons/get_flash_player.gif' alt='Get Adobe Flash player' /></a>" ); 
			</script> 
        </div>
       	<noscript>
            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="100%" height="700" id="Classroom">
                <param name="movie" value="<%=basePath%>swf/Classroom.swf" />
                <param name="quality" value="high" />
                <param name="bgcolor" value="#ffffff" />
                <param name="allowScriptAccess" value="sameDomain" />
                <param name="allowFullScreen" value="true" />
                <param name='wmode' value='transparent'>
                <!--[if !IE]>-->
                <object type="application/x-shockwave-flash" data="<%=basePath%>swf/Classroom.swf" width="100%" height="700">
                    <param name="quality" value="high" />
                    <param name="bgcolor" value="#ffffff" />
                    <param name="allowScriptAccess" value="sameDomain" />
                    <param name="allowFullScreen" value="true" />
                    <param name='wmode' value='transparent'>
                <!--<![endif]-->
                <!--[if gte IE 6]>-->
                	<p> 
                		Either scripts and active content are not permitted to run or Adobe Flash Player version
                		10.0.0 or greater is not installed.
                	</p>
                <!--<![endif]-->
                    <a href="http://www.adobe.com/go/getflashplayer">
                        <img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash Player" />
                    </a>
                <!--[if !IE]>-->
                </object>
                <!--<![endif]-->
        	</object>
		</noscript>
	</div>
	<div id="end_bg">
		<p>适用浏览器：IE8、360、FireFox、Chrome、Safari、Opera、傲游、搜狗、世界之窗. </p>
		<p>来源：<a href="http://sc.chinaz.com/" target="_blank">站长素材</a></p>
	</div>
	</div>
  </body>
</html>
