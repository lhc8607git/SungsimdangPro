package domain;

import java.util.Date;

public class NoticeManageDTO {

	private String notice_code;		
	private String manager_code;		
	private String title;		
	private String content;		
	private Integer view_count;		
	private Date create_date;		
	private Integer is_fix;		
	private String img;	

	public String getNotice_code() {
		return notice_code;
	}
	public void setNotice_code(String notice_code) {
		this.notice_code = notice_code;
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
	public Integer getView_count() {
		return view_count;
	}
	public void setView_count(Integer view_count) {
		this.view_count = view_count;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	public Integer getIs_fix() {
		return is_fix;
	}
	public void setIs_fix(Integer is_fix) {
		this.is_fix = is_fix;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
}
