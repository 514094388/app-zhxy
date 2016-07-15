<%@ page language="java" import="java.util.*,org.jsoup.nodes.Document,org.springframework.beans.factory.annotation.Autowired" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <base href="http://localhost:89/ZHXY/">
    
    <title>创建Java项目</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1"  />
	
<link href="css/framework/BgAndTopMenu-1.css" rel="stylesheet" type="text/css" />
<link href="css/framework/TopMenuItem-1.css" rel="stylesheet" type="text/css" />
<link href="css/framework/LeftMenu-1.css" rel="stylesheet" type="text/css" />
<link href="css/framework/Content-1.css" rel="stylesheet" type="text/css" />
<link href="css/testPrac/MzTree-1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://localhost:89/ZHXY/js/jquery/jquery.min.js"></script>
<script type="text/javascript"  src="http://localhost:89/ZHXY/js/framework/BgAndTopMenu-1.js"></script>
<script type="text/javascript"  src="http://localhost:89/ZHXY/js/framework/LeftMenu-1.js"></script>
<script type="text/javascript"  src="http://localhost:89/ZHXY/js/testPrac/MzTreeView10.js"></script>
<!--  å·¦è¾¹èåæ JSèæ¬ï¼LeftMenu.js   -->
<script type="text/javascript">
$(document).ready(function(){
						   
	/* æ»å¨/å±å¼ */
	$("ul.expmenu li > div.header").click(function(){
												   
		var arrow = $(this).find("span.arrow");
	
		if(arrow.hasClass("up")){
			arrow.removeClass("up");
			arrow.addClass("down");
		}else if(arrow.hasClass("down")){
			arrow.removeClass("down");
			arrow.addClass("up");
		}
	
		$(this).parent().find("ul.menu").slideToggle();
		
	});
	
});
</script>
<!-- end å·¦è¾¹èåæ JSèæ¬ï¼LeftMenu.js   -->

<style type="text/css">
body{
background-color:#fafafa;
}
</style>
  </head>
  
  <body>
  	<div id="top_bg">
	
<div class="top">
 <a class="logo_l" href="/" title="返回首页"></a>
 <div class="nav_z">
  <ul id="navul" class="cl">
   <li><a href="WebFrame/Index.dsr">首页</a></li>
   <li><a href="javascript:void(0)">W3C自习室</a>
    <ul>
     <li><a href="WebFrame/Index.dsr?mid=4">HTML教程</a></li>
     <li><a href="WebFrame/Index.dsr?mid=b">浏览器脚本</a></li>
     <li><a href="WebFrame/Index.dsr?mid=2a">Web Services</a></li>
     <li><a href="WebFrame/Index.dsr?mid=30">.NET</a></li>
     <li><a href="WebFrame/Index.dsr?mid=3f">关于 W3School</a></li>
     <li><a href="WebFrame/Index.dsr?mid=40">帮助 W3School</a></li>
     <li><a href="WebFrame/Index.dsr?mid=1b">XML教程</a></li>
     <li><a href="WebFrame/Index.dsr?mid=36">建站手册</a></li>
     <li><a href="WebFrame/Index.dsr?mid=15">服务器脚本</a></li>
    </ul></li>
   <li><a href="javascript:void(0)">JAVA自习室</a></li>
   <li><a href="javascript:void(0)">考练中心</a>
   <ul>
     <li><a href="WebFrame/Index.dsr?mid=4">专项训练</a></li>
     <li><a href="WebFrame/Index.dsr?mid=b">考试</a></li>
    </ul></li>
  </ul>
 </div>
</div>
<script  type="text/javascript"> 
	$(".navbg").capacityFixed();
</script>

	
<div class="top_item">
 <div class="nav_z">
  <ul id="navul" class="cl">
   <li><a href="WebFrame/Index.dsr?mid=15&amp;id=16" title="PHP 教程">PHP</a></li>
   <li><a href="WebFrame/Index.dsr?mid=15&amp;id=17" title="SQL 教程">SQL</a></li>
   <li><a href="WebFrame/Index.dsr?mid=15&amp;id=18" title="ASP 教程">ASP</a></li>
   <li><a href="WebFrame/Index.dsr?mid=15&amp;id=19" title="ADO 教程">ADO</a></li>
   <li><a href="WebFrame/Index.dsr?mid=15&amp;id=1a" title="VBScript 教程">VBScript</a></li>
  </ul>
 </div>
</div>

	<!--  
<ul class="expmenu">
 <li>
  <div class="header">
   <span class="label">HTML 基础教程</span>
   <span class="arrow up"></span>
  </div><span class="no">
   <ul class="menu" style="display:block;">
    <li><a href="WebFrame/Index.dsr?id=6&amp;cid=2&amp;mid=5" title="HTML 教程">HTML 教程</a></li>
    <li><a href="WebFrame/Index.dsr?id=6&amp;cid=3&amp;mid=5" title="HTML 简介">HTML 简介</a></li>
    <li><a href="WebFrame/Index.dsr?id=6&amp;cid=4&amp;mid=5" title="HTML 基础 - 四个实例">HTML 基础</a></li>
    <li><a href="WebFrame/Index.dsr?id=6&amp;cid=5&amp;mid=5" title="HTML 元素">HTML 元素</a></li>
    <li><a href="WebFrame/Index.dsr?id=6&amp;cid=6&amp;mid=5" title="HTML 属性">HTML 属性</a></li>
    <li><a href="WebFrame/Index.dsr?id=6&amp;cid=7&amp;mid=5" title="HTML 标题">HTML 标题</a></li>
    <li><a href="WebFrame/Index.dsr?id=6&amp;cid=8&amp;mid=5" title="HTML 段落">HTML 段落</a></li>
    <li><a href="WebFrame/Index.dsr?id=6&amp;cid=9&amp;mid=5" title="HTML 文本格式化">HTML 格式化</a></li>
    <li><a href="WebFrame/Index.dsr?id=6&amp;cid=a&amp;mid=5" title="HTML 编辑器">HTML 编辑器</a></li>
    <li><a href="WebFrame/Index.dsr?id=6&amp;cid=b&amp;mid=5" title="HTML 样式 - CSS">HTML 样式</a></li>
    <li><a href="WebFrame/Index.dsr?id=6&amp;cid=c&amp;mid=5" title="HTML 链接">HTML 链接</a></li>
    <li><a href="WebFrame/Index.dsr?id=6&amp;cid=d&amp;mid=5" title="HTML 图像">HTML 图像</a></li>
    <li><a href="WebFrame/Index.dsr?id=6&amp;cid=e&amp;mid=5" title="HTML 表格">HTML 表格</a></li>
   </ul></span></li>
</ul>
-->
<script language="JavaScript">
  var tree = new MzTreeView("tree");

  tree.icons["property"] = "property.gif";
  tree.icons["css"] = "collection.gif";
  tree.icons["book.gif"]  = "book.gif";
 // tree.iconsExpand["book.gif"] = "bookopen.gif"; //展开时对应的图片

  tree.setIconPath("images/testPrac/"); //可用相对路径

  tree.nodes["0_2"] = "text:W3C自习室";

  tree.nodes["2_23"] = "text:HTML教程";

  tree.nodes["2_c"] = "text:浏览器脚本";


  //tree.setURL("Catalog.asp");
  tree.setTarget("MzMain");
  document.write(tree.toString());    //亦可用 obj.innerHTML = tree.toString();
</script>
<!-- 目录树start -->
<div class="MzTreeView" ondblclick="tree.dblClickHandle(event)" onclick="tree.clickHandle(event)">
	<a style="display: none;" id="tree_RootLink" href="#"></a>
	<span id="tree_tree_1">
		<div noWrap="True">
			<br>
				<ul id="list">
				<li id="list_0">
				<img id="tree_icon_1" align="absMiddle" src="images/testPrac/root.gif"/>
				<a hideFocus="" style="color: #ffffff; background-color: rgb(10, 36, 106);" id="tree_link_1" class="MzTreeview" onfocus="tree.focusLink('1')" title="W3C自习室" onclick="return tree.nodeClick('1')" href="#" target="MzMain">
					W3C自习室
				</a>
				</li>
				<li id="list_1">
				<a href="#">
					共10823道题
				</a>
				</li>
				<li id="list_2">
				<a href="#">已答250道</a>
				</li>
				<li id="list_3">
				<a href="#">答错50道</a>
				</li>
				<li id="list_4">
				正确率:
				<i>
				<span style="width:100px;height:10px;display:inline-block;background-color:#cccccc"/>
				<span style="width:80px;height:10px;display:inline-block;background-color:#3399ff"/>
				</i>
				80%
				</li>
				<li id="list_5">
				<a href="#">
					开始做题
				</a>
				</li>
				<li id="list_6">
				<a href="#">
					教程
				</a>
				</li>
				</ul>
			</br>
		</div>
		<span style="display: block;">
			<span id="tree_tree_2">
				<div noWrap="True">
					<nobr>
						<span>
							<img id="tree_expand_2" align="absmiddle" src="images/testPrac/L1.gif">
						</span>
							<img id="tree_icon_2" align="absMiddle" src="images/testPrac/file.gif">
							<a hideFocus="" id="tree_link_2" class="MzTreeview" onfocus="tree.focusLink('2')" title="HTML教程" onclick="return tree.nodeClick('2')" href="#" target="MzMain">
								HTML教程
							</a>
					</nobr>
				</div>
				<span style="display: none;">
				</span>
			</span>
			<span id="tree_tree_3">
				<div noWrap="True">
					<nobr>
						<span>
							<img id="tree_expand_3" align="absmiddle" src="images/testPrac/L2.gif">
						</span>
						<img id="tree_icon_3" align="absMiddle" src="images/testPrac/file.gif">
						<a hideFocus="" id="tree_link_3" class="MzTreeview" onfocus="tree.focusLink('3')" title="浏览器脚本" onclick="return tree.nodeClick('3')" href="#" target="MzMain">
							浏览器脚本
						</a>
					</nobr>
				</div>
				<span style="display: none;">
				</span>
			</span>
		</span>
	</span>
</div>
<!-- 目录树end -->
	<div id="end_bg">
		<p>适用浏览器：IE8、360、FireFox、Chrome、Safari、Opera、傲游、搜狗、世界之窗. </p>
		<p>来源：<a href="http://sc.chinaz.com/" target="_blank">站长素材</a></p>
		
	</div>

	</div>
  </body>
</html>
