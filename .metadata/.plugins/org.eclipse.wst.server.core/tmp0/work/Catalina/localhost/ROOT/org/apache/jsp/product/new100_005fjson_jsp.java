/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.73
 * Generated at: 2022-01-14 07:10:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import com.util.JdbcUtil;
import com.util.ConnectionProvider;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class new100_005fjson_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/C:/Class/SSDClass2/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/ssdPro/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1642121787000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.sql.Connection");
    _jspx_imports_classes.add("com.util.JdbcUtil");
    _jspx_imports_classes.add("net.sf.json.JSONArray");
    _jspx_imports_classes.add("java.sql.ResultSet");
    _jspx_imports_classes.add("net.sf.json.JSONObject");
    _jspx_imports_classes.add("com.util.ConnectionProvider");
    _jspx_imports_classes.add("java.sql.PreparedStatement");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n");

Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String sql = "SELECT ROWNUM num, t.* "
		+ "                   FROM(  "
		+ "                      SELECT DISTINCT p.PRD_CODE, p.CAT_CODE, STOCK, PRD_NAME, PRD_INFO, DETAIL_CONTENT, "
		+ "                          DETAIL_CONTENT2, DETAIL_CONTENT3, DETAIL_CONTENT4, PRD_PRC, PRD_POINT, "
		+ "                          RATING, EXP_DATE, PRD_STR, SHIPPING_PRICE, PRD_SIZE, IS_SIDEOPTION, "
		+ "                          SIDE_OPTIONNAME, ALLERGY_INFO, INGREDIENT_INFO, DISCOUNT_RATE, SALES, "
		+ "                          IS_GIFTCARD, i.img1, i.img2, i.img3, m.create_date, c.maincat_code "
		+ "                      FROM product p, imgprd i, prdmanage m, category c, maincategory ma "
		+ "                      WHERE p.prd_code = i.prd_code AND p.prd_code = m.prd_code AND p.cat_code = c.cat_code "
		+ "                      ORDER BY m.create_date DESC "
		+ "                      ) t "
		+ "                   WHERE ROWNUM <= 100 AND REGEXP_LIKE(maincat_code, ?)";
			
//object {}
int maincat_code = Integer.parseInt( request.getParameter("selectValue") );  


JSONObject jsonData = new JSONObject();

try {
	con = ConnectionProvider.getConnection();
	pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, maincat_code);
	rs = pstmt.executeQuery();

	JSONArray jsonBestArray = new JSONArray();

	while (rs.next()) {
		int num = rs.getInt("num");
		String img1 = rs.getString("img1");
		int prd_prc = rs.getInt("prd_prc");
		String prd_name = rs.getString("prd_name");

		JSONObject temp = new JSONObject();
		temp.put("num", num);
		temp.put("img1", img1);
		temp.put("prd_prc", prd_prc);
		temp.put("prd_name", prd_name);

		jsonBestArray.add(temp);
	} // while 

	jsonData.put("best100", jsonBestArray);

} catch (Exception e) {
	e.printStackTrace();
} finally {
	JdbcUtil.close(rs);
	JdbcUtil.close(pstmt);
	JdbcUtil.close(con);
} // try

      out.write('\r');
      out.write('\n');
      out.print(jsonData);
      out.write('\r');
      out.write('\n');
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
