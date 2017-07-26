package Orderdetail.model;

public class Order {
	private int oid ; // 주문번호 
	private String mid ; // 주문자의 id
	private String orderdate ; // 주문한 날짜
	
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}
	@Override
	public String toString() {
		return "Order [oid=" + oid + ", mid=" + mid + ", orderdate="
				+ orderdate + "]";
	}
	
}