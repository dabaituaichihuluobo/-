package entity;

public class CustomerClass {
	
	private int ccid;
	private int vid;
	private int cid;
	private int csex;
	private String cname;
	private String cphone;
	private int cvipnum;
	private int state;
	private int intention;
	
	private Vip vip;
	private Coach coach;
	
	public CustomerClass() {
	}
	public CustomerClass(int ccid, int vid, int cid, int csex, String cname, String cphone, int cvipnum, int state,
			int intention, Vip vip, Coach coach) {
		super();
		this.ccid = ccid;
		this.vid = vid;
		this.cid = cid;
		this.csex = csex;
		this.cname = cname;
		this.cphone = cphone;
		this.cvipnum = cvipnum;
		this.state = state;
		this.intention = intention;
		this.vip = vip;
		this.coach = coach;
	}
	public int getCcid() {
		return ccid;
	}
	public void setCcid(int ccid) {
		this.ccid = ccid;
	}
	public int getVid() {
		return vid;
	}
	public void setVid(int vid) {
		this.vid = vid;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public Vip getVip() {
		return vip;
	}
	public void setVip(Vip vip) {
		this.vip = vip;
	}
	public Coach getCoach() {
		return coach;
	}
	public void setCoach(Coach coach) {
		this.coach = coach;
	}
	public int getCsex() {
		return csex;
	}
	public void setCsex(int csex) {
		this.csex = csex;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCphone() {
		return cphone;
	}
	public void setCphone(String cphone) {
		this.cphone = cphone;
	}
	public int getCvipnum() {
		return cvipnum;
	}
	public void setCvipnum(int cvipnum) {
		this.cvipnum = cvipnum;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getIntention() {
		return intention;
	}
	public void setIntention(int intention) {
		this.intention = intention;
	}
	
	
	
	
	

}
