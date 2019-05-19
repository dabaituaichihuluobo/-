package entity;


public class Coach {
	int cid;
	String name,sex;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Coach() {
	}
	public Coach(int cid, String name, String sex) {
		super();
		this.cid = cid;
		this.name = name;
		this.sex = sex;
	}
	
	
	
	
}
