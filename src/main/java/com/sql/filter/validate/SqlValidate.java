package com.sql.filter.validate;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import oracle.sql.CLOB;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;


public class SqlValidate {
	
	private JdbcTemplate dbop;
	public JdbcTemplate getDbop() {
		return dbop;
	}
	public void setDbop(JdbcTemplate dbop) {
		this.dbop = dbop;
	}
	
	private Log log = LogFactory.getLog(this.getClass());
	
	public static int TYPE_LOGIN = 1;
	
	/*
	 * Map properties must have named 'Type' property
	 * the 'Type' property value '1',means validate login;
	 * the 'Name' property value '',
	 */
	public boolean validate(Map properties){
		List valList = null;
		if(properties != null && properties.size() != 0){
			switch((Integer)properties.get("Type")){
			case 1:
				String name = (String)properties.get("Name");
				String password = (String)properties.get("Password");
				String sqlValidate = "SELECT T.ROWID FROM SYS_USER T WHERE T.NAME=? AND T.PASSWORD=?";
				if(dbop.queryForList(sqlValidate, name,password).size() != 0)return true;
				break;
			default:
				System.out.println("无法识别验证类型！");break;
			}
		}
		return false;
	}
	public void get(String... d){}
	
}
