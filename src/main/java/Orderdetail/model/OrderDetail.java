package Orderdetail.model;

public class OrderDetail {
	private int odid ; // sequence
	private int oid ; // �ֹ���ȣ
	private int pnum ; // ��ǰ ��ȣ
	private int qty ; // �ֹ� ����
	
	public int getOdid() {
		return odid;
	}
	public void setOdid(int odid) {
		this.odid = odid;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	@Override
	public String toString() {
		return "OrderDetail [odid=" + odid + ", oid=" + oid + ", pnum=" + pnum + ", qty=" + qty + "]";
	}
	
}

