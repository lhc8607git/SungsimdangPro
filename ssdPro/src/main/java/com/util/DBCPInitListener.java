package com.util;

import java.io.IOException;
import java.io.StringReader;
import java.util.Properties;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class DBCPInitListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("> DBCPInitListener.contextDestroyed() ...");
		
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("> DBCPInitListener.contextInitializeds() ...");
		
		// web.xml DBCP 설정값을 읽어와서 출력..
		// JSP application 기본 객체
		String poolConfig = sce.getServletContext().getInitParameter("poolConfig");
		StringReader sr = new StringReader(poolConfig);
		Properties prop = new Properties();
		
		try {
			prop.load(sr);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		System.out.println(prop.getProperty("type"));
		System.out.println(prop.getProperty("driverClassName"));
		System.out.println(prop.getProperty("url"));
		System.out.println(prop.getProperty("username"));
		System.out.println(prop.getProperty("password"));
		
		
	}

}
