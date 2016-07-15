package module.loader;

import java.net.URL;
import java.net.URLClassLoader;
import java.net.URLStreamHandlerFactory;

public class ModuleLoader extends URLClassLoader {
	
	protected ClassLoader parent;
	
	public ModuleLoader(URL[] urls, ClassLoader parent,
			URLStreamHandlerFactory factory) {
		super(urls, parent, factory);
		// TODO Auto-generated constructor stub
	}

	public ModuleLoader(URL[] urls, ClassLoader parent) {
		super(urls);
		this.parent = parent;
		// TODO Auto-generated constructor stub
	}

	@Override
	protected Class<?> findClass(String name) throws ClassNotFoundException {
		// TODO Auto-generated method stub
		Class cla = null;
		try {
			cla = super.findClass(name);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("在模块类加载器ModuleLoader中找不到类：" + name);
		}
		if(cla == null)
			cla = this.parent.getClass().forName(name);
		return cla;
	}

	public ModuleLoader(URL[] urls) {
		super(urls);
		// TODO Auto-generated constructor stub
	}
	
	protected void start(URL[] urls){
	}
	
}
