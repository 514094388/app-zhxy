package module.loader;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashSet;
import java.util.Set;
import java.util.Stack;

public class LoaderFactory {
	
	public static ModuleLoader getModuleLoader(String jarClassPath) throws MalformedURLException{
		String relativePath = "../webapps/ZHXY";
		Stack<File> stack = new Stack();
		Set<URL> urlSet = new HashSet<URL>();
		File file = new File(relativePath + jarClassPath);
		if(file.isDirectory()){
			File listFile[] = file.listFiles();
			for(int i=(listFile.length-1);i>=0;i--){
				file = listFile[i];
				if(file.isDirectory()){
					if(i != 0){
						if(file.listFiles().length != 0)
							stack.push(file);
					}else{
						listFile = file.listFiles();
						if(listFile.length == 0 && !stack.empty())
							listFile = stack.pop().listFiles();
						i = listFile.length;
					}
				}else{
					if(file.isFile() && file.getName().endsWith(".jar")){
						urlSet.add(new URL("file:" + file.getPath()));
					};
					if(i == 0 && !stack.empty()){
						listFile = stack.pop().listFiles();
						i = listFile.length;
					}
				}
			}
		}else{
			if(file.isFile() && file.getName().endsWith(".jar")){
				urlSet.add(new URL("file:" + file.getPath()));
			};
		}
		ModuleLoader modualLoader = new ModuleLoader(urlSet.toArray(new URL[urlSet.size()]));
		return modualLoader;
	}

}
