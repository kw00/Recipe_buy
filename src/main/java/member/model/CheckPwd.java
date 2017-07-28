package member.model;

public class CheckPwd {
	private	String pwd;
	private boolean checkPwd;
	
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public boolean isCheckPwd() {
		return checkPwd;
	}
	public void setCheckPwd(boolean checkPwd) {
		this.checkPwd = checkPwd;
	}
	
	
	@Override
	public String toString() {
		return "CheckPwd [pwd=" + pwd + ", checkPwd=" + checkPwd + "]";
	}
	
}
