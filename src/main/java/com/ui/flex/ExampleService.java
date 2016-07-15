package com.ui.flex;

import org.springframework.flex.remoting.RemotingDestination;
import org.springframework.flex.remoting.RemotingInclude;
import org.springframework.stereotype.Service;
/*
 * 通过标记将Spring定义的Beans暴露给远程
 * @RemotingDestionation指明通道，一般不需要特殊指定
 * @RemotingInclude和@RemotiongExclude分别指出远程可见和不可见方法。
 */
@Service("exampleService")
@RemotingDestination(channels={"my-amf"},serviceAdapter="javaAdapter")
public class ExampleService{
	
	@RemotingInclude
	public String getName(String name) {
		System.out.println("flex调用成功！");
        return "hello:" + name;
    }
}