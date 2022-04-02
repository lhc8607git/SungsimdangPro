package domain;

import java.sql.Connection;
import java.util.Date;
import java.util.List;

public class AdManageDTO {

	private String ad_code;		
	private String manager_code;		
	private String title;		
	private Date create_date;		
	private String content;	
	
	
	private boolean newmark;
	
	
	public boolean isNewmark() {
		return newmark;
	}
	public void setNewmark(boolean newmark) {
		this.newmark = newmark;
	}
	
	
	public String getAd_code() {
		return ad_code;
	}
	public void setAd_code(String ad_code) {
		this.ad_code = ad_code;
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
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	public AdManageDTO() {
		super();
	}
	public AdManageDTO(String ad_code, String manager_code, String title, Date create_date, String content,
			boolean newmark) {
		super();
		this.ad_code = ad_code;
		this.manager_code = manager_code;
		this.title = title;
		this.create_date = create_date;
		this.content = content;
		//this.newmark = newmark;
	}
	@Override
	public String toString() {
		return "AdManageDTO [ad_code=" + ad_code + ", manager_code=" + manager_code + ", title=" + title
				+ ", create_date=" + create_date + ", content=" + content + ", newmark=" + newmark + "]";
	}	
	
}
