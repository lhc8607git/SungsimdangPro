/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.73
 * Generated at: 2022-01-14 00:36:54 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ifrm_005fpopupLayer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

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

      out.write("\r\n");
      out.write("<!doctype html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>성심당</title>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("<base target=\"_blank\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/css/common.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/css/swiper.min.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/css/idangerous.swiper.css\" />\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("html, body { overflow:hidden; }\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<!-- 슬라이드 팝업 css -->\r\n");
      out.write("  <style type=\"text/css\">\r\n");
      out.write("    li{list-style:none}\r\n");
      out.write("    ul{padding:0}\r\n");
      out.write("    .slpop {float:left; width:378px;background:#ffffff8c;}\r\n");
      out.write("    .slpopWrap {clear:both; position:relative; overflow:hidden;}\r\n");
      out.write("    .slpop_con {width:378px;height:378px;}\r\n");
      out.write("    .slpop_con ul {overflow:hidden;margin-top:0;}\r\n");
      out.write("    .slpop_con ul li {width:378px;height:378px;}\r\n");
      out.write("    .slpop_con ul li img{width:100%;height:100%;}\r\n");
      out.write("    .slpop_paging {}\r\n");
      out.write("    .slpop_paging ul {display:block;overflow:hidden;margin:10px 0;}\r\n");
      out.write("    .slpop_paging ul li {width:112px;height:96px;float:left; font-size:18px; color:#808080; line-height:83.3px; text-align:center;cursor:pointer;margin-left:10px; margin-top:10px;}\r\n");
      out.write("    .slpop_paging ul li:first-child{margin-right:0;}\r\n");
      out.write("    .slpop_paging ul li .liwrap{height:100%;box-sizing:border-box;background:#f6f6f6;}\r\n");
      out.write("    .slpop_paging ul li .liwrap img{width:100%;}\r\n");
      out.write("    .slpop_paging ul li.on .liwrap{color:#666;background:#e9e9e9;}\r\n");
      out.write("    .slpopWrap .prev {position:absolute; top:50%; left:16px; width:18px; height:31px; margin-top:-15.5px; cursor:pointer; z-index:100;}\r\n");
      out.write("    .slpopWrap .next {position:absolute; top:50%; right:16px; width:18px; height:31px; margin-top:-15.5px; cursor:pointer; z-index:100;}\r\n");
      out.write("    .bottom_box{position:absolute;top:0;right:-4px;z-index:99;}\r\n");
      out.write("    .bottom_box .chekbx, .bottom_box .text{display:none;}\r\n");
      out.write("\r\n");
      out.write("	/* 메인 팝업 체크박스 위치 조절 */\r\n");
      out.write("table input#ispop{vertical-align:inherit;}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"/jscript/common.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"/jscript/embed.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"/jscript/cookie.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"/jscript/jquery-1.9.1.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"/jscript/idangerous.swiper.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("<!--\r\n");
      out.write("function closePopup() {\r\n");
      out.write("	if (document.getElementById(\"ispop\").checked) {\r\n");
      out.write("		setCookie( \"popup_sungsimdang90\", \"done\", 1);\r\n");
      out.write("	}\r\n");
      out.write("	parent.closePopupLayer(\"popup_sungsimdang90\");\r\n");
      out.write("}\r\n");
      out.write("//-->\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body bgcolor=\"#FFFFFF\" style=\"margin:0px; overflow:hidden;\">\r\n");
      out.write("<table border='0' cellpadding='0' cellspacing='0' width='500'>\r\n");
      out.write("	<tr height='500'>\r\n");
      out.write("		<td align='center' valign='top'>\r\n");
      out.write("			<img src='/data/sungsimdang/popup/22_가격인상안내-팝업_1.jpg' border='0'>\r\n");
      out.write("		</td>\r\n");
      out.write("	</tr>\r\n");
      out.write("	<tr height='20'>\r\n");
      out.write("		<td align='right'>\r\n");
      out.write("			<input type='checkbox' id='ispop' onClick='closePopup()' style='width:16px; height:16px;'>\r\n");
      out.write("			<span style='color:#999999; margin-right:20px'>오늘 이창 띄우지 않음</span>\r\n");
      out.write("			<img src='/data/sungsimdang/button/btn_close_popup.gif' align='absmiddle' onClick='closePopup()' style='cursor:pointer; margin-right:5px;'>\r\n");
      out.write("		</td>\r\n");
      out.write("	</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("<!--\r\n");
      out.write("function adjustParentIFrame() {\r\n");
      out.write("	if (parent.resizeFrame) { parent.resizeFrame(window); }\r\n");
      out.write("	else { setTimeout(\"adjustParentIFrame()\", 250); }\r\n");
      out.write("}\r\n");
      out.write("adjustParentIFrame();\r\n");
      out.write("//-->\r\n");
      out.write("</script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("  var vSwiper = $('.slpop_con').swiper({\r\n");
      out.write("	loop: true,\r\n");
      out.write("	autoplay: 2000,\r\n");
      out.write("	pagination : '.slpop .swpPaging',\r\n");
      out.write("	paginationClickable :true,\r\n");
      out.write("	onSlideChangeStart: function(swiper){\r\n");
      out.write("	  $(\".slpop_paging li\").removeClass(\"on\");\r\n");
      out.write("	  $(\".slpop_paging li\").eq(swiper.activeLoopIndex).addClass(\"on\");\r\n");
      out.write("	},\r\n");
      out.write("	onFirstInit: function(swiper){\r\n");
      out.write("	  $(\".slpop_paging li\").eq(0).addClass(\"on\");\r\n");
      out.write("	  //bind paging click\r\n");
      out.write("	  $(\".slpop_paging li\").each(function(index){\r\n");
      out.write("		$(this).hover(function(){\r\n");
      out.write("		  $(\".slpop .swpPaging span\").eq(index).click();\r\n");
      out.write("		});\r\n");
      out.write("	  });\r\n");
      out.write("	  //prev next\r\n");
      out.write("	  $(\".slpopWrap .prev\").click(function(){\r\n");
      out.write("		swiper.swipePrev();\r\n");
      out.write("	  });\r\n");
      out.write("	  $(\".slpopWrap .next\").click(function(){\r\n");
      out.write("		swiper.swipeNext();\r\n");
      out.write("	  });\r\n");
      out.write("	}\r\n");
      out.write("  });\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("</html>");
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