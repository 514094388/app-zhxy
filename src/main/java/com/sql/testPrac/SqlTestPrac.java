package com.sql.testPrac;

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
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.markdown4j.Markdown4jProcessor;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;


public class SqlTestPrac {
	
	private JdbcTemplate dbop;
	public JdbcTemplate getDbop() {
		return dbop;
	}
	public void setDbop(JdbcTemplate dbop) {
		this.dbop = dbop;
	}
	
	private Log log = LogFactory.getLog(this.getClass());
	public Map getCatalog(String menu_id){
		Map catalog_1 = new HashMap();
		String sql_1 = "SELECT T.* FROM SYS_MENUS T WHERE T.ID IN (" + menu_id + ")";
		Map<String, Object> menu_1 = new HashMap();
		List<Map<String, Object>> menus_1 = null;
		String sta = "0";
		ArrayList sizeArray = new ArrayList();
		int size = 0;
		
		String sql_2 = "SELECT T.* FROM SYS_MENUS T WHERE T.PAR_ID = ?";
		List<Map<String, Object>> menus_2 = null;
		
		menus_1 = dbop.queryForList(sql_1);
		size = menus_1.size();
		while(menus_1.size() != 0){
			menu_1 = menus_1.get(0);
			if(size != 0){
				size--;
			}else{
				sta = (String) menu_1.get("PAR_ID");
				size = (Integer)sizeArray.get(0)-1;
				sizeArray.remove(0);
			}
			catalog_1.put(sta + "_" +(String)menu_1.get("ID"), menu_1);
			menus_1.remove(0);
			menus_2 = dbop.queryForList(sql_2,menu_1.get("ID"));
			if(menus_2.size() != 0){
				menus_1.addAll(menus_2);
				sizeArray.add(menus_2.size());
			}
		}
		return catalog_1;
	}
	public List getExercises(String cid){
		List<Map<String, Object>> exercises_1 = null;
		String sql_1 = "SELECT T.* FROM Exercises T, (select ',' || listagg(t1.id, ',') within group(order by id) || ',' AS ids from sys_menus t1 connect by prior t1.id = t1.par_id start with t1.id = '" + cid + "') t2 WHERE instr(t2.ids,',' || T.CID || ',') <> 0 and rownum <= 10";
		exercises_1 = dbop.queryForList(sql_1);
		return exercises_1;
	}

	public List getChoice(String eid){
		List<Map<String, Object>> choice_1 = null;
		String sql_1 = "SELECT T.* FROM Choice T WHERE T.EID IN ('" + eid + "')";
		choice_1 = dbop.queryForList(sql_1);
		return choice_1;
	}
//	
//	public static void main(String args[]){
//		/**
//		 * 验证1
//		 */
////		List list_1 = new ArrayList();
////		List list_2 = new ArrayList();
////		list_1.add("1");
////		list_1.add("2");
////		list_2.add("3");
////		list_2.add("4");
////		list_2.addAll(list_1);
////		for(Object s : list_2){
////			System.out.println(s);
////		}
////		while(list_2.size() != 0){
////			System.out.println(list_2.get(0));
////			list_2.remove(0);
////		}
//		/**
//		 * 验证2
//		 */
//		Map m = new HashMap();
//		Set keys = null;
//		m.put("0_ee", "2");
//		m.put("ee_dd", "1");
//		m.put("ee_cc", "2");
//		keys = m.keySet();
//		for(Object key:keys){
//			System.out.println(key);
//		}
//		System.out.println("0_ee".startsWith("0_"));
//	}
	
}
