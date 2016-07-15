package com.ui.web.html;

import module.loader.ModuleLoader;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sql.testPrac.SqlTestPrac;

/*
 * 作为注释注入的请求处理类，要在类前面添加@Controller，声明该类是注释注入的请求处理类，
 * @RequestMapping("WebFrame")，声明映射的类路径，理论上该路径可以是任意的，没有硬性规定要使用什么值，
 * 但一般选择与映射的类名、方法名相同，以便日后可以快速地根据访问路径找到对应的处理类。
 */
@Controller
@RequestMapping("WebFrame")
public class WebFrame {
	@Autowired
	private ModuleLoader testModuleLoader;
	
	public ModuleLoader getTestModuleLoader() {
		return testModuleLoader;
	}
	public void setTestModuleLoader(ModuleLoader testModuleLoader) {
		this.testModuleLoader = testModuleLoader;
	}
	@Autowired
	private SqlTestPrac sqlTestPrac;
	
	public SqlTestPrac getSqlTestPrac() {
		return sqlTestPrac;
	}
	public void setSqlTestPrac(SqlTestPrac sqlTestPrac) {
		this.sqlTestPrac = sqlTestPrac;
	}
	
	private Log log = LogFactory.getLog(this.getClass());
	/*
	 * 如果方法结束后返回的内容是一个资源路径，则不需要加入@ResponseBody，
	 * 返回的字符串会自动加上配置文件中配置的前缀和后缀，按照前缀+返回值+后缀作为路径去读取页面显示。
	 * 如果返回的内容要直接返回到客户端，则添加@ResponseBody。
	 */
	@RequestMapping("Index")
	public String index(String test,String submit){
		System.out.println("test:" + test);
		System.out.println("submit:" + submit);
		return "html/Framework";
	}
	/*进入登录界面
	 * 如果方法结束后返回的内容是一个资源路径，则不需要加入@ResponseBody，
	 * 返回的字符串会自动加上配置文件中配置的前缀和后缀，按照前缀+返回值+后缀作为路径去读取页面显示。
	 * 如果返回的内容要直接返回到客户端，则添加@ResponseBody。
	 */
	@RequestMapping("Login")
	public String login(){
		System.out.println("登录界面");
		return "html/Login";
	}
	/*进入考练中心首页
	 * 如果方法结束后返回的内容是一个资源路径，则不需要加入@ResponseBody，
	 * 返回的字符串会自动加上配置文件中配置的前缀和后缀，按照前缀+返回值+后缀作为路径去读取页面显示。
	 * 如果返回的内容要直接返回到客户端，则添加@ResponseBody。
	 */
	@RequestMapping("Practice")
	public String practice(){
		System.out.println("题目练习");
		return "html/testPrac/Practice";
	}
	/*
	 * 如果方法结束后返回的内容是一个资源路径，则不需要加入@ResponseBody，
	 * 返回的字符串会自动加上配置文件中配置的前缀和后缀，按照前缀+返回值+后缀作为路径去读取页面显示。
	 * 如果返回的内容要直接返回到客户端，则添加@ResponseBody。
	 */
	@RequestMapping("TestPrac")
	public String testPrac(){
		System.out.println("进入考练中心");
		return "html/testPrac/TestPrac";
	}

	/*
	 * 如果方法结束后返回的内容是一个资源路径，则不需要加入@ResponseBody，
	 * 返回的字符串会自动加上配置文件中配置的前缀和后缀，按照前缀+返回值+后缀作为路径去读取页面显示。
	 * 如果返回的内容要直接返回到客户端，则添加@ResponseBody。
	 */
	@RequestMapping("TestPrac-Demo")
	public String testPracDemo(){
		System.out.println("进入考练中心");
		return "html/TestPrac-Demo";
	}
}
