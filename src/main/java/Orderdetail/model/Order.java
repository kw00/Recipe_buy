package Orderdetail.model;

public class Order {
	private int oid ; // �ֹ���ȣ 
	private String mid ; // �ֹ����� id
	private String orderdate ; // �ֹ��� ��¥
	
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