package demo;

import java.io.IOException;

import org.markdown4j.Markdown4jProcessor;


public class MarkdownDemo {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			String html = new Markdown4jProcessor().process("#This is a **bold** text");
			System.out.println(html);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
