package domain;

import java.util.Date;

public class CpManageDTO {

	private String coupon_code;		
	private String cp_name;		
	private String manager_code;		
	private Date create_date;
	
	public String getCoupon_code() {
		return coupon_code;
	}
	public void setCoupon_code(String coupon_code) {
		this.coupon_code = coupon_code;
	}
	public String getCp_name() {
		return cp_name;
	}
	public void setCp_name(String cp_name) {
		this.cp_name = cp_name;
	}
	public String getManager_code() {
		return manager_code;
	}
	public void setManager_code(String manager_code) {
		this.manager_code = manager_code;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
}
