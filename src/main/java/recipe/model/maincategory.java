package recipe.model;

public class maincategory {
	private int mnum;// number primary key, //카테고리 넘버
	private String mcategory;// varchar2(50) //인기, 밥류, 국류, 면류(메인 카테고리 이름) 서브카테고리와 조인할 외래키
	public int getMnum() {
		return mnum;
	}
	public void setMnum(int mnum) {
		this.mnum = mnum;
	}
	public String getMcategory() {
		return mcategory;
	}
	public void setMcategory(String mcategory) {
		this.mcategory = mcategory;
	}
	@Override
	public String toString() {
		return "maincategory [mnum=" + mnum + ", mcategory=" + mcategory + "]";
	}
	
	
}
