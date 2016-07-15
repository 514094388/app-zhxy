<%@ page language="java" import="java.util.Map,java.util.Set,com.sql.testPrac.SqlTestPrac,org.springframework.web.context.support.WebApplicationContextUtils,org.springframework.context.ApplicationContext" pageEncoding="UTF-8"%>
<%
	System.out.println("测试");
	ApplicationContext ac2 = WebApplicationContextUtils.getWebApplicationContext(this.getServletContext());
	SqlTestPrac sqlTestPrac = (SqlTestPrac)ac2.getBean("sqlTestPrac");
	Map catalog_1 = sqlTestPrac.getCatalog("'2','3'");

%>
<script language="JavaScript">
  var tree = new MzTreeView("tree");
  tree.setIconPath("images/testPrac/"); //可用相对路径
<%
	Set keys = catalog_1.keySet();
	String catalog = null;
	for(Object key:keys){
		catalog = (String)((Map)catalog_1.get(key)).get("NAME");
		System.out.println("KEY:" + key);
		System.out.println(catalog);
%>
  tree.nodes["<%=key%>"] = "text:<%=catalog%>";
<%
  	}
%>
  //tree.setURL("Catalog.asp");
  tree.setTarget("MzMain");
  document.write(tree.toString());    //亦可用 obj.innerHTML = tree.toString();
</script>