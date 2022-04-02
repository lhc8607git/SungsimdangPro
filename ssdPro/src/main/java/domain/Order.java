package domain;

import java.sql.Date;

public class Order {
	private String orderCode;
	private String prdCode;
	private String deslistCode;
	private String exchcouponCode;
	private String cartCode;
	private String hcouponCode;
	private Date orderDate;
	private int orderPrice;
	private int discountPrice;
	private int totalpaymentPrice;
	private String shippingState;
	private String paymentOption;
	private int reservePrice;
	private Date shippingwishDate;
	private String shippingTime;
	private String requestOrder;

	public String getOrderCode() {
		return orderCode;
	}

	public void setOrderCode(String orderCode) {
		this.orderCode = orderCode;
	}

	public String getPrdCode() {
		return prdCode;
	}

	public void setPrdCode(String prdCode) {
		this.prdCode = prdCode;
	}

	public String getDeslistCode() {
		return deslistCode;
	}

	public void setDeslistCode(String deslistCode) {
		this.deslistCode = deslistCode;
	}

	public String getExchcouponCode() {
		return exchcouponCode;
	}

	public void setExchcouponCode(String exchcouponCode) {
		this.exchcouponCode = exchcouponCode;
	}

	public String getCartCode() {
		return cartCode;
	}

	public void setCartCode(String cartCode) {
		this.cartCode = cartCode;
	}

	public String getHcouponCode() {
		return hcouponCode;
	}

	public void setHcouponCode(String hcouponCode) {
		this.hcouponCode = hcouponCode;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public int getOrderPrice() {
		return orderPrice;
	}

	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}

	public int getDiscountPrice() {
		return discountPrice;
	}

	public void setDiscountPrice(int discountPrice) {
		this.discountPrice = discountPrice;
	}

	public int getTotalpaymentPrice() {
		return totalpaymentPrice;
	}

	public void setTotalpaymentPrice(int totalpaymentPrice) {
		this.totalpaymentPrice = totalpaymentPrice;
	}

	public String getShippingState() {
		return shippingState;
	}

	public void setShippingState(String shippingState) {
		this.shippingState = shippingState;
	}

	public String getPaymentOption() {
		return paymentOption;
	}

	public void setPaymentOption(String paymentOption) {
		this.paymentOption = paymentOption;
	}

	public int getReservePrice() {
		return reservePrice;
	}

	public void setReservePrice(int reservePrice) {
		this.reservePrice = reservePrice;
	}

	public Date getShippingwishDate() {
		return shippingwishDate;
	}

	public void setShippingwishDate(Date shippingwishDate) {
		this.shippingwishDate = shippingwishDate;
	}

	public String getShippingTime() {
		return shippingTime;
	}

	public void setShippingTime(String shippingTime) {
		this.shippingTime = shippingTime;
	}

	public String getRequestOrder() {
		return requestOrder;
	}

	public void setRequestOrder(String requestOrder) {
		this.requestOrder = requestOrder;
	}

	@Override
	public String toString() {
		return "Order [orderCode=" + orderCode + ", prdCode=" + prdCode + ", deslistCode=" + deslistCode
				+ ", exchcouponCode=" + exchcouponCode + ", cartCode=" + cartCode + ", hcouponCode=" + hcouponCode
				+ ", orderDate=" + orderDate + ", orderPrice=" + orderPrice + ", discountPrice=" + discountPrice
				+ ", totalpaymentPrice=" + totalpaymentPrice + ", shippingState=" + shippingState + ", paymentOption="
				+ paymentOption + ", reservePrice=" + reservePrice + ", shippingwishDate=" + shippingwishDate
				+ ", shippingTime=" + shippingTime + ", requestOrder=" + requestOrder + "]";
	}

}
