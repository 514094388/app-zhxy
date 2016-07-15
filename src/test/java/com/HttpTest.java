/**
 * 
 */
package com;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;

import org.apache.commons.httpclient.URI;
import org.apache.http.HttpEntity;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

/**
 * @author MinZhong.Lin
 * @Time 2016-07-10
 * Http测试父类
 *
 */
public class HttpTest {
	
	/**
	 * @author MinZhong.Lin
	 * @Time 2016-07-10
	 * 创建默认的httpClient实例
	 */
	CloseableHttpClient  httpClient = HttpClients.createDefault();
	/**
	 * @author MinZhong.Lin
	 * @Time 2016-07-10
	 * 发送Get类型的Http请求
	 */
	public void sendHttpGetForm(String url){
		HttpGet httpGet = null;
		CloseableHttpResponse httpResponse = null;
		try {
			//用get方法发送http请求
			httpGet = new HttpGet(url);
			//发送get请求
			httpResponse = (CloseableHttpResponse) httpClient.execute(httpGet);
			//response实体
            HttpEntity entity = httpResponse.getEntity();
            if (null != entity){
                System.out.println("响应状态码:"+ httpResponse.getStatusLine());
                System.out.println("-------------------------------------------------");
                System.out.println("响应内容:" + EntityUtils.toString(entity));
                System.out.println("-------------------------------------------------");                    
            }
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if(httpResponse != null){
					httpResponse.close();
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	/**
	 * @author MinZhong.Lin
	 * @Time 2016-07-10
	 * 发送POST类型的Http请求
	 */
	public void sendHttpPostForm(String url,List nameValuePairList){
		HttpPost httpPost = null;
		CloseableHttpResponse httpResponse = null;
		try {
			//用get方法发送http请求
			httpPost = new HttpPost(url);
			//url格式编码
            UrlEncodedFormEntity uefEntity = new UrlEncodedFormEntity(nameValuePairList,"UTF-8");
            httpPost.setEntity(uefEntity);
			//发送get请求
			httpResponse = (CloseableHttpResponse) httpClient.execute(httpPost);
			//response实体
            HttpEntity entity = httpResponse.getEntity();
            if (null != entity){
                System.out.println("响应状态码:"+ httpResponse.getStatusLine());
                System.out.println("-------------------------------------------------");
                System.out.println("响应内容:" + EntityUtils.toString(entity));
                System.out.println("-------------------------------------------------");                    
            }
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if(httpResponse != null){
					httpResponse.close();
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	public void closeHttpClient() throws IOException{
        if (httpClient != null){
        	httpClient.close();
        }
    }
}
