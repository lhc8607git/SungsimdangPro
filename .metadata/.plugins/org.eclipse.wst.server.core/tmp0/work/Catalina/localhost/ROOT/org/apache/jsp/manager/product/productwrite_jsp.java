/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.73
 * Generated at: 2022-01-15 11:49:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.manager.product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class productwrite_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes = null;
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

      out.write("\r\n\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<meta charset=\"UTF-8\">\r\n<title>성심당</title>\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script> \r\n\r\n<style>\r\n  a{\r\n     text-decoration: none;\r\n     color:black;\r\n   }\r\n   table,  tr, td {\r\n    border-radius: 3px;\r\n   }\r\n</style>\r\n\r\n</head>\r\n<body>\r\n\r\n<h3>상품 추가</h3>\r\n\r\n\r\n<form  method=\"post\">\r\n <table width=\"600px\" style=\"margin:50px auto\" border=\"1\">\r\n   <tr>\r\n     <td colspan=\"2\" align=\"right\">\r\n       <a href=\"productlist.asp\">상품 목록</a>\r\n\r\n     </td>\r\n   </tr>\r\n    <tr>\r\n     <td width=\"70\" align=\"center\">상품코드</td>\r\n     <td width=\"330\">\r\n       <input type=\"text\" name=\"prd_code\" size=\"10\" >\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n     <td width=\"70\" align=\"center\">카테고리중코드</td>\r\n     <td width=\"330\">\r\n       <input type=\"text\" name=\"cat_code\" size=\"10\" >\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n     <td width=\"70\" align=\"center\">품절 여부(0/1)</td>\r\n     <td width=\"330\">\r\n       <input type=\"text\" name=\"stock\" size=\"1\">\r\n");
      out.write("     </td>\r\n   </tr>\r\n   <tr>\r\n     <td width=\"70\" align=\"center\">상품명</td>\r\n     <td width=\"330\">\r\n       <input type=\"text\" name=\"prd_name\" size=\"40\" >\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n     <td width=\"70\" align=\"center\">상품소개</td>\r\n     <td width=\"330\">\r\n       <textarea rows=\"13\" cols=\"50\" name=\"prd_info\"></textarea>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n     <td width=\"70\" align=\"center\">상세설명</td>\r\n     <td width=\"330\">\r\n       <textarea rows=\"13\" cols=\"50\" name=\"detail_content\"></textarea>\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n     <td width=\"70\" align=\"center\">상세설명2_이미지</td>\r\n     <td width=\"330\">\r\n       <input type=\"text\" name=\"detail_content2\" size=\"40\" >\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n     <td width=\"70\" align=\"center\">상세설명3_이미지</td>\r\n     <td width=\"330\">\r\n       <input type=\"text\" name=\"detail_content3\" size=\"40\" >\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n     <td width=\"70\" align=\"center\">상세설명4_이미지</td>\r\n     <td width=\"330\">\r\n       <input type=\"text\" name=\"detail_content4\" size=\"40\" >\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n     <td width=\"70\" align=\"center\">가격</td>\r\n");
      out.write("     <td width=\"330\">\r\n       <input type=\"text\" name=\"prd_prc\" size=\"10\" >\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n     <td width=\"70\" align=\"center\">적립금</td>\r\n     <td width=\"330\">\r\n       <input type=\"text\" name=\"prd_point\" size=\"10\" >\r\n     </td>\r\n   </tr>   \r\n   <tr>\r\n     <td width=\"70\" align=\"center\">평점</td>\r\n     <td width=\"330\">\r\n       <input type=\"text\" name=\"rating\" size=\"10\" >\r\n     </td>\r\n   </tr>   \r\n   <tr>\r\n     <td width=\"70\" align=\"center\">유통기한</td>\r\n     <td width=\"330\">\r\n       <input type=\"text\" name=\"exp_date\" size=\"40\" >\r\n     </td>\r\n   </tr>   \r\n   <tr>\r\n     <td width=\"70\" align=\"center\">보관방법</td>\r\n     <td width=\"330\">\r\n       <input type=\"text\" name=\"prd_str\" size=\"40\" >\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n     <td width=\"70\" align=\"center\">배송비</td>\r\n     <td width=\"330\">\r\n       <input type=\"text\" name=\"shipping_price\" size=\"10\" >\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n     <td width=\"70\" align=\"center\">사이즈</td>\r\n     <td width=\"330\">\r\n       <input type=\"text\" name=\"prd_size\" size=\"40\" >\r\n     </td>\r\n");
      out.write("   </tr>\r\n   <tr>\r\n     <td width=\"70\" align=\"center\">사이드 상품여부</td>\r\n     <td width=\"330\">\r\n       <input type=\"text\" name=\"is_sideoption\" size=\"1\">\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n     <td width=\"70\" align=\"center\">사이드 추가상품</td>\r\n     <td width=\"330\">\r\n       <input type=\"text\" name=\"side_optionname\" size=\"40\" >\r\n     </td>\r\n   </tr>  \r\n   <tr>\r\n     <td width=\"70\" align=\"center\">알레르기정보</td>\r\n     <td width=\"330\">\r\n       <input type=\"text\" name=\"allergy_info\" size=\"40\" >\r\n     </td>\r\n   </tr>  \r\n   <tr>\r\n     <td width=\"70\" align=\"center\">성분표시</td>\r\n     <td width=\"330\">\r\n       <input type=\"text\" name=\"ingredient_info\" size=\"40\" >\r\n     </td>\r\n   </tr>  \r\n   <tr>\r\n     <td width=\"70\" align=\"center\">할인율</td>\r\n     <td width=\"330\">\r\n       <input type=\"text\" name=\"discount_rate\" size=\"10\" >\r\n     </td>\r\n   </tr>   \r\n   <tr>\r\n     <td width=\"70\" align=\"center\">판매수량</td>\r\n     <td width=\"330\">\r\n       <input type=\"text\" name=\"sales\" size=\"10\" >\r\n     </td>\r\n   </tr>   \r\n   <tr>\r\n     <td width=\"70\" align=\"center\">기프티콘사용가능여부</td>\r\n");
      out.write("     <td width=\"330\">\r\n       <input type=\"text\" name=\"is_giftcard\" size=\"1\">\r\n     </td>\r\n   </tr>\r\n   <tr>\r\n     <td colspan=\"2\" align=\"center\">\r\n       <input type=\"submit\" value=\"글쓰기\">\r\n       <input type=\"reset\" value=\"다시작성\">\r\n       <input type=\"button\" value=\"글목록\" \r\n       onclick=\"location.href='productlist.asp'\">\r\n     </td>\r\n   </tr>\r\n </table>\r\n</form>\r\n</body>\r\n</html>");
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
