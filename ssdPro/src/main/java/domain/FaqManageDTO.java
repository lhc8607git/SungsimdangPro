package domain;



public class FaqManageDTO {

	private String faq_code;		
	private String manager_code;		
	private String title;		
	private String content;		
	
	public String getFaq_code() {
		return faq_code;
	}
	public void setFaq_code(String faq_code) {
		this.faq_code = faq_code;
	}
	public String getManager_code() {
		return manager_code;
	}
	public void setManager_code(String manager_code) {
		this.manager_code = manager_code;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
