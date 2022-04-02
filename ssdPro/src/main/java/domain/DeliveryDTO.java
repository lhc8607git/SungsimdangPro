package domain;

// DTO
public class DeliveryDTO {
//	PRD_CODE        NOT NULL VARCHAR2(30)   
//	CAT_CODE                 VARCHAR2(30)   
//	STOCK                    NUMBER(1)      
//	PRD_NAME                 VARCHAR2(100)  
//	PRD_INFO                 VARCHAR2(1000) 
//	DETAIL_CONTENT           VARCHAR2(4000) 
//	DETAIL_CONTENT2          VARCHAR2(4000) 
//	DETAIL_CONTENT3          VARCHAR2(4000) 
//	DETAIL_CONTENT4          VARCHAR2(4000) 
//	PRD_PRC                  NUMBER(6)      
//	PRD_POINT                NUMBER(6)      
//	RATING                   NUMBER(1)      
//	EXP_DATE                 VARCHAR2(100)  
//	PRD_STR                  VARCHAR2(50)   
//	SHIPPING_PRICE           NUMBER(4)      
//	PRD_SIZE                 VARCHAR2(50)   
//	IS_SIDEOPTION            NUMBER(1)      
//	SIDE_OPTIONNAME          VARCHAR2(30)   
//	ALLERGY_INFO             VARCHAR2(4000) 
//	INGREDIENT_INFO          VARCHAR2(4000) 
//	DISCOUNT_RATE            NUMBER(6)      
//	SALES                    NUMBER(10)     
//	IS_GIFTCARD              NUMBER(1)      

	private int num;
	private String prd_code;
	private String cat_code;
	private int stock;
	private String prd_name;
	private String prd_info;
	private String detail_content;
	private String detail_content2;
	private String detail_content3;
	private String detail_content4;
	private int prd_prc;
	private int prd_point;
	private int rating;
	private String exp_date;
	private String prd_str;
	private int shipping_price;
	private String prd_size;
	private int is_sideoption;
	private String size_optionname;
	private String allergy_info;
	private String ingredient_info;
	private int discount_rate;
	private int sales;
	private int is_giftcard;
	
	private String img1;
	private String img2;
	private String img3;
	
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
	}
	public String getPrd_code() {
		return prd_code;
	}
	public void setPrd_code(String prd_code) {
		this.prd_code = prd_code;
	}
	public String getCat_code() {
		return cat_code;
	}
	public void setCat_code(String cat_code) {
		this.cat_code = cat_code;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getPrd_name() {
		return prd_name;
	}
	public void setPrd_name(String prd_name) {
		this.prd_name = prd_name;
	}
	public String getPrd_info() {
		return prd_info;
	}
	public void setPrd_info(String prd_info) {
		this.prd_info = prd_info;
	}
	public String getDetail_content() {
		return detail_content;
	}
	public void setDetail_content(String detail_content) {
		this.detail_content = detail_content;
	}
	public String getDetail_content2() {
		return detail_content2;
	}
	public void setDetail_content2(String detail_content2) {
		this.detail_content2 = detail_content2;
	}
	public String getDetail_content3() {
		return detail_content3;
	}
	public void setDetail_content3(String detail_content3) {
		this.detail_content3 = detail_content3;
	}
	public String getDetail_content4() {
		return detail_content4;
	}
	public void setDetail_content4(String detail_content4) {
		this.detail_content4 = detail_content4;
	}
	public int getPrd_prc() {
		return prd_prc;
	}
	public void setPrd_prc(int prd_prc) {
		this.prd_prc = prd_prc;
	}
	public int getPrd_point() {
		return prd_point;
	}
	public void setPrd_point(int prd_point) {
		this.prd_point = prd_point;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getExp_date() {
		return exp_date;
	}
	public void setExp_date(String exp_date) {
		this.exp_date = exp_date;
	}
	public String getPrd_str() {
		return prd_str;
	}
	public void setPrd_str(String prd_str) {
		this.prd_str = prd_str;
	}
	public int getShipping_price() {
		return shipping_price;
	}
	public void setShipping_price(int shipping_price) {
		this.shipping_price = shipping_price;
	}
	public String getPrd_size() {
		return prd_size;
	}
	public void setPrd_size(String prd_size) {
		this.prd_size = prd_size;
	}
	public int getIs_sideoption() {
		return is_sideoption;
	}
	public void setIs_sideoption(int is_sideoption) {
		this.is_sideoption = is_sideoption;
	}
	public String getSize_optionname() {
		return size_optionname;
	}
	public void setSize_optionname(String size_optionname) {
		this.size_optionname = size_optionname;
	}
	public String getAllergy_info() {
		return allergy_info;
	}
	public void setAllergy_info(String allergy_info) {
		this.allergy_info = allergy_info;
	}
	public String getIngredient_info() {
		return ingredient_info;
	}
	public void setIngredient_info(String ingredient_info) {
		this.ingredient_info = ingredient_info;
	}
	public int getDiscount_rate() {
		return discount_rate;
	}
	public void setDiscount_rate(int discount_rate) {
		this.discount_rate = discount_rate;
	}
	public int getSales() {
		return sales;
	}
	public void setSales(int sales) {
		this.sales = sales;
	}
	public int getIs_giftcard() {
		return is_giftcard;
	}
	public void setIs_giftcard(int is_giftcard) {
		this.is_giftcard = is_giftcard;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
	
}
