package recipe.model;

public class GoodBad {
	private int gbnum;// number not null primary key, --추천테이블 고유키
	private int rnum;// number not null,--해당 레시피 번호
	private String memid;// varchar2(50) not null, --추천 또는 비추천을 준 회원 아이디
	private int good;// int,
	private int bad;// int
	public int getGbnum() {
		return gbnum;
	}
	public void setGbnum(int gbnum) {
		this.gbnum = gbnum;
	}
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public String getMemid() {
		return memid;
	}
	public void setMemid(String memid) {
		this.memid = memid;
	}
	public int getGood() {
		return good;
	}
	public void setGood(int good) {
		this.good = good;
	}
	public int getBad() {
		return bad;
	}
	public void setBad(int bad) {
		this.bad = bad;
	}
	@Override
	public String toString() {
		return "GoodBad [gbnum=" + gbnum + ", rnum=" + rnum + ", memid=" + memid + ", good=" + good + ", bad=" + bad
				+ "]";
	}
	
	
}
