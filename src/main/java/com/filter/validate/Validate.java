package com.filter.validate;

import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import com.sql.filter.validate.SqlValidate;

public class Validate implements Filter {
	
	@Autowired
	private SqlValidate sqlValidate;

	public SqlValidate getSqlValidate() {
		return sqlValidate;
	}

	public void setSqlValidate(SqlValidate sqlValidate) {
		this.sqlValidate = sqlValidate;
	}

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		//继续执行过滤器
		chain.doFilter(request, response);
	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
