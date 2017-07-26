package Orderdetail.model;

public class ShoppingInfo { 
	
	private int fnum ; //��ǰ ��ȣ
	private String fname ; //��ǰ ��
	private int fqty ; //�ֹ� ����
	private int fprice ; //�ܰ�
	private int famount ; //�ݾ�
	private int fpoint;
	private String fcompany;
	private String finputdate;
	private String fimage;
	
	
	
	
	public String getFimage() {
		return fimage;
	}
	public void setFimage(String fimage) {
		this.fimage = fimage;
	}
	public int getFpoint() {
		return fpoint;
	}
	public void setFpoint(int fpoint) {
		this.fpoint = fpoint;
	}
	public String getFcompany() {
		return fcompany;
	}
	public void setFcompany(String fcompany) {
		this.fcompany = fcompany;
	}
	public String getFinputdate() {
		return finputdate;
	}
	public void setFinputdate(String finputdate) {
		this.finputdate = finputdate;
	}
	public int getFnum() {
		return fnum;
	}
	public void setFnum(int fnum) {
		this.fnum = fnum;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public int getFqty() {
		return fqty;
	}
	public void setFqty(int fqty) {
		this.fqty = fqty;
	}
	public int getFprice() {
		return fprice;
	}
	public void setFprice(int fprice) {
		this.fprice = fprice;
	}
	public int getFamount() {
		return famount;
	}
	public void setFamount(int famount) {
		this.famount = famount;
	}
	@Override
	public String toString() {
		return "ShoppingInfo [fnum=" + fnum + ", fname=" + fname + ", fqty=" + fqty + ", fprice=" + fprice
				+ ", famount=" + famount + ", getFnum()=" + getFnum() + ", getFname()=" + getFname() + ", getFqty()="
				+ getFqty() + ", getFprice()=" + getFprice() + ", getFamount()=" + getFamount() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	
	
	
}
