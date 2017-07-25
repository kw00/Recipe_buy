package member.model;

public class CheckId {
	private	String id;
	private boolean checkId;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public boolean isCheckId() {
		return checkId;
	}
	public void setCheckId(boolean checkId) {
		this.checkId = checkId;
	}
	
	@Override
	public String toString() {
		return "CheckId [id=" + id + ", checkId=" + checkId + "]";
	}
	
}
