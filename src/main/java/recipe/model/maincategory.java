package recipe.model;

public class maincategory {
	private int mnum;// number primary key, //ī�װ� �ѹ�
	private String mcategory;// varchar2(50) //�α�, ���, ����, ���(���� ī�װ� �̸�) ����ī�װ��� ������ �ܷ�Ű
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
