/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.73
 * Generated at: 2022-01-14 02:23:06 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.notice;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<meta charset=\"UTF-8\">\r\n<link rel=\"SHORTCUT ICON\" href=\"https://www.sungsimdangmall.co.kr/data/sungsimdang/favicon.ico?1641493639\">\r\n<title>성심당</title>\r\n<style>\r\nli, ul, ol {\r\n    list-style: none;\r\n}\r\na {\r\n    color: #2e2e2e;\r\n    text-decoration: none;\r\n}\r\n\r\n</style>\r\n\r\n\r\n\r\n\r\n</head>\r\n<body>\r\n<!-- \r\n<a href=\"notice.asp\">공지사항</a>\r\n<a href=\"noticeaAsk.asp\">1:1문의하기</a>\r\n<a href=\"noticeFaq.asp\">FAQ 바로가기</a>\r\n<a href=\"noticeCacao.asp\">카카오톡문의</a> \r\n<a href=\"cscenter.asp\">고객센터</a> \r\n\r\n-->\r\n\r\n\r\n<div>\r\n<a name=\"M_1181\"></a>\r\n<!--템플릿 : 성심당 배송별상품 -->\r\n<style type=\"text/css\">\r\n    .notice.collectionWrap {padding:30px 0px; background-color: #f5f3ee;}\r\n    .notice.collectionWrap .collection {width: 100%; max-width: 1280px; margin:0 auto; display: flex;}\r\n    .notice.collectionWrap .collection .noticeLeftWrap{ display: flex; width: 400px; text-align: left; justify-content: space-between;} \r\n    .notice.collectionWrap .collection .noticeTitle{color: #683b28; font-size: 24px; font-weight: bold;} \r\n");
      out.write("    .notice.collectionWrap .collection .noticeTitle .noticeMoreBtn a{color: #c3ac9f; font-size:14px; float: right; transition: 0.2s ease;} \r\n    .notice.collectionWrap .collection .noticeTitle .noticeMoreBtn a:hover{color: #4f2c1e;} \r\n    .notice.collectionWrap .collection .noticeLeftWrap .noticeCall{color: #87553D; font-size: 36px; font-weight: bold;} \r\n    .notice.collectionWrap .collection .noticeLeftWrap span{color:#c4b09f;display: block; font-size: 15px;} \r\n    .notice.collectionWrap .collection .noticeLeftWrap .noticeEscro{color: #c4b09f;display: block; padding-top: 10px; border-top: 1px solid #ccbbaf; font-size: 15px;}\r\n    .notice.collectionWrap .collection .noticeLeftWrap .noticeEscro a{color: #c4b09f;}\r\n    .notice.collectionWrap .collection .noticeDay{padding-bottom: 10px;}\r\n    .notice.collectionWrap .collection .noticeLeftWrap .noticeRightTxt ul{display: flex; flex-direction: column;}\r\n    .notice.collectionWrap .collection .noticeLeftWrap .noticeRightTxt ul li{margin-bottom: 10px; border-radius: 5px; width: 180px;}\r\n");
      out.write("    .notice.collectionWrap .collection .noticeLeftWrap .noticeRightTxt ul li a{display: block;padding:12px; border-radius:5px; font-size: 16px; position: relative;}\r\n \r\n    .notice.collectionWrap .collection .noticeRightTxt {padding-top: 48px;}\r\n    .notice.collectionWrap .collection .noticeRightTxt .noticeAsk a{color: #fff; background-color: #87553D;}\r\n    .notice.collectionWrap .collection .noticeRightTxt .noticeFaq a{color: #87553D; border: 2px solid #87553D;}\r\n    .notice.collectionWrap .collection .noticeRightTxt .noticeCacao a{text-align: center; background-color: #fee600; color: #000;}\r\n    .notice.collectionWrap .collection .noticeRightWrap {width: 850px; text-align: left;}\r\n    .notice.collectionWrap .collection .noticeTitle {padding-left: 4%; margin-bottom: 10px;}\r\n    .notice.collectionWrap .collection .noticeRightWrap ul {display: flex; flex-wrap: wrap;}\r\n    .notice.collectionWrap .collection .noticeRightWrap ul li { margin-left: 4%; height: 40px;border-bottom: 1px solid #ccbbaf;\r\n    width: 46%;}\r\n");
      out.write("    .notice.collectionWrap .collection .noticeRightWrap ul li a {padding: 12px 0px; color: #c2ac9d;  display: block; transition: 0.2s ease; font-size: 15px;float: left;}\r\n    .notice.collectionWrap .collection .noticeRightWrap ul li a:hover {color:#4f2c1e;}\r\n     .notice.collectionWrap .collection .noticeRightWrap ul li span{float: right; padding: 12px 0px; color: #c2ac9d;display: block; font-size: 15px;}\r\n\r\n\r\n    .notice.collectionWrap .collection .noticeRightTxt ul li a:after {content: \"\"; display: block; position: absolute;  width: 2px; height: 12px; top:23px; right:12px; transform: rotate(45deg);}\r\n    .notice.collectionWrap .collection .noticeRightTxt ul li a:before {content: \"\"; display: block; position: absolute;  width: 2px; height: 12px; top: 15px; right:12px;  transform: rotate(-45deg);}\r\n\r\n    .notice.collectionWrap .collection .noticeRightTxt .noticeAsk a:after {background-color: #fff;}\r\n    .notice.collectionWrap .collection .noticeRightTxt .noticeAsk a:before {background-color: #fff;}\r\n    .notice.collectionWrap .collection .noticeRightTxt .noticeFaq a:after {background-color: #000;}\r\n");
      out.write("    .notice.collectionWrap .collection .noticeRightTxt .noticeFaq a:before {background-color: #000;}\r\n</style>\r\n<!--//템플릿 : 성심당 배송별상품  -->\r\n\r\n<div class=\"notice collectionWrap\">\r\n   <div class=\"collection\">\r\n\r\n       <div class=\"noticeLeftWrap\"> \r\n            <div class=\"noticeLeftTxt\">\r\n                <div class=\"noticeTitle\" style=\"padding-left: 0px;\">고객센터</div>\r\n                <span class=\"noticeCall\">1588-8069</span>\r\n                <span>AM 8:00 - PM 18:00</span><!-- \r\n                <span class=\"noticeDay\"></span> -->\r\n                <div class=\"noticeEscro hide\">\r\n                    KCP구매안전(에스크로) 서비스\r\n                    <span style=\"border-bottom: 1px solid #ccbbaf; padding-bottom: 3px;\"><a href=\"#\">서비스 가입사실 확인</a></span>\r\n                </div>\r\n            </div>\r\n            <div class=\"noticeRightTxt\">\r\n                <ul>\r\n                    <li class=\"noticeAsk\"><a href=\"noticeaAsk.asp\">1:1문의하기</a></li>\r\n                    <li class=\"noticeFaq\"><a href=\"noticeFaq.asp\">FAQ 바로가기</a></li>\r\n");
      out.write("                    <li class=\"noticeCacao\"><a href=\"noticeCacao.asp\">카카오톡문의</a></li>\r\n                </ul>\r\n            </div>\r\n       </div>\r\n       <div class=\"noticeRightWrap\"> \r\n            <div class=\"noticeLeft\">\r\n                <div class=\"noticeTitle\">공지사항 <span class=\"noticeMoreBtn\"><a href=\"notice.asp\">더보기 +</a></span></div>\r\n                <ul>\r\n                    <li><a href=\"/board/list.asp?board=notice&amp;uid=970\">※ 안내 ※  제품 가격인상.</a> <span>2021-12-31</span></li>\r\n                    <li><a href=\"/board/list.asp?board=notice&amp;uid=969\">크리스마스케익 예약(방문 및 배..</a> <span>2021-12-22</span></li>\r\n                    <li><a href=\"/board/list.asp?board=notice&amp;uid=968\">1:1 게시판 운영안내(크리스마스..</a> <span>2021-12-14</span></li>\r\n                    <li><a href=\"/board/list.asp?board=notice&amp;uid=967\">KTX특송 일부지역(마산역 및 호..</a> <span>2021-11-29</span></li>\r\n                    <li><a href=\"/board/list.asp?board=notice&amp;uid=966\">KTX특송 일부 영업소 임시 휴무..</a> <span>2021-08-02</span></li>\r\n                    <li><a href=\"/board/list.asp?board=notice&amp;uid=965\">코로나 확산에 따른 택배 제한 안..</a> <span>2021-07-28</span></li>\r\n");
      out.write("                    <li><a href=\"/board/list.asp?board=notice&amp;uid=964\">주문 및 배송비 안내드립니다.</a> <span>2021-04-28</span></li>\r\n                    <li><a href=\"/board/list.asp?board=notice&amp;uid=963\">상품리뷰 적립금 지급안내</a> <span>2021-02-19</span></li>\r\n                </ul>\r\n            </div>\r\n       </div>\r\n       \r\n   </div>\r\n</div>\r\n\r\n<script>\r\n\r\n    //내용 없으면 li 삭제\r\n    delImg('.deli.collectionWrap .dlProductWrap ul li','');\r\n\r\n\r\n</script></div>\r\n<div>\r\n<a name=\"M_1182\"></a>\r\n<!-- 탬플릿 : 성심당 푸터영역 -->\r\n<style type=\"text/css\">\r\n.footer {text-align:left; background-color: #563320;}\r\n.footer .links { line-height:60px; overflow:hidden; border-bottom: 1px solid rgba(255,255,255,0.3);}\r\n.footer .links a {margin:0 15px; color:#fff; font-size:15px; position: relative;}\r\n.footer .links a:first-child {margin-left:0;}\r\n.footer .links a:after {content: \"\"; display:block; position: absolute; width:1px; height: 10px; top: 6px;\r\nleft: -15px; background-color: #fff; opacity: 0.5;}\r\n.footer .links .snsIcons a {margin: 0;}\r\n.footer .links .snsIcons a:after{display: none;}\r\n");
      out.write(".footer .links a:first-child:after{display: none;}\r\n.footer .adrCopyright { padding:25px 0px 45px 0px; overflow:hidden; box-sizing:border-box;}\r\n.footer .contAuto {position:relative;width:1280px; margin:0 auto;}\r\n.footer .contAuto .footlogo{position:absolute;top:50%;right:0; transform:  translate(0px, -50%);}\r\n.footer .contAuto .footCopyright{line-height:24px;color: #d7cdc6; font-size: 15px;}\r\n.footer .contAuto .footCopyright span{margin-left: 10px;}\r\n.footer .contAuto .snsIcons {float: right;}\r\n.footer .contAuto .snsIcons img{margin-right: 10px; width: 35px;}\r\n</style>\r\n<!-- 탬플릿 : 성심당 푸터영역 -->\r\n\r\n<div class=\"footer\">\r\n    <div class=\"links\">\r\n        <div class=\"contAuto\">\r\n            <a href=\"http://www.sungsimdang.co.kr/\">회사소개</a>\r\n            <a href=\"/cscenter/search_market.asp\">매장안내</a>\r\n            <a href=\"/other/licensing.asp\">이용약관</a>\r\n            <a href=\"cscenter.asp\">고객센터</a> \r\n            <a href=\"/other/privacy.asp\">개인정보처리방침</a>\r\n            <div class=\"snsIcons\">\r\n            <a href=\"https://www.instagram.com/sungsimdang_official/\" target=\"\"><img src=\"https://www.sungsimdangmall.co.kr/data/sungsimdang/banner/IMGBIN_instagram-facebook-png_vfDUv1a6.png\" border=\"0\"></a>\r\n");
      out.write("            <a href=\"https://facebook.com/sungsimdang4114\" target=\"\"><img src=\"https://www.sungsimdangmall.co.kr/data/sungsimdang/banner/IMGBIN_facebook-png_BjuQQ9YG.png\" border=\"0\"></a>\r\n            </div>\r\n        </div>\r\n        \r\n    </div>\r\n\r\n    <form name=\"frm1\">\r\n    <input name=\"wrkr_no\" type=\"hidden\" value=\"305-81-48738\">\r\n\r\n    <div class=\"adrCopyright\">\r\n        <div class=\"contAuto\">\r\n            <div class=\"footCopyright\">\r\n                대표: 임영진 <span>법인명: 로쏘 주식회사</span> <span>전화: 1588-8069</span><span>E-mail: yoonhd81@sungsimdang.co.kr</span><br>\r\n                주소: 대전 중구 대종로480번길 15(은행동)<span>개인정보관리책임자: 윤현돈 (yoonhd81@sungsimdang.co.kr)</span><br>\r\n                사업자등록번호: 305-81-48738<span>통신판매신고: 제2015-대전중구-0015호</span> <br>\r\n                <!-- 팩스: 042-256-4482 -->\r\n    <!-- <span style=\"\" class=\"footCopyrightbtn\" onclick=\"onopen();\" valign=\"absmiddle\">사업자정보확인</span> -->\r\n                <!-- Copyright ⓒ 2016 성심당쇼핑몰 All rights reserved -->\r\n            </div>\r\n            <div class=\"footlogo\"><a href=\"http://www.sungsimdangmall.co.kr/Default.asp\" target=\"\"><img src=\"https://www.sungsimdangmall.co.kr/data/sungsimdang/banner/ft_logo_2.png\" border=\"0\"></a></div>\r\n");
      out.write("        </div>\r\n    </div>\r\n    \r\n\r\n    </form>\r\n</div>\r\n</div>\r\n\r\n\r\n\r\n\r\n</body>\r\n</html>");
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
