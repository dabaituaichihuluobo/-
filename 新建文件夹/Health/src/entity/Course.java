package entity;

import java.util.Date;

public class Course {
	
	private int id;
	private String classes;
	private int buyclass;
	private int overclass;
	private int residue;
	private Date orderdate;
	private int vid;
	private int cid;
	private int state;
	
	private Vip vip;
	private Coach coach;
	
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

	public Course(int id, String classes, int buyclass, int overclass, int residue, Date orderdate, int vid, int cid,
			Vip vip, Coach coach) {
		super();
		this.id = id;
		this.classes = classes;
		this.buyclass = buyclass;
		this.overclass = overclass;
		this.residue = residue;
		this.orderdate = orderdate;
		this.vid = vid;
		this.cid = cid;
		this.vip = vip;
		this.coach = coach;
	}

	public Course() {
	}
	
	public Course(int id, String classes, int buyclass, int overclass, int residue, int vid, Date orderdate) {
		super();
		this.id = id;
		this.classes = classes;
		this.buyclass = buyclass;
		this.overclass = overclass;
		this.residue = residue;
		this.vid = vid;
		this.orderdate = orderdate;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getClasses() {
		return classes;
	}
	public void setClasses(String classes) {
		this.classes = classes;
	}
	public int getBuyclass() {
		return buyclass;
	}
	public void setBuyclass(int buyclass) {
		this.buyclass = buyclass;
	}
	public int getOverclass() {
		return overclass;
	}
	public void setOverclass(int overclass) {
		this.overclass = overclass;
	}
	public int getResidue() {
		return residue;
	}
	public void setResidue(int residue) {
		this.residue = residue;
	}
	public int getVid() {
		return vid;
	}
	public void setVid(int vid) {
		this.vid = vid;
	}
	public Date getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}
	
	
	
	

}
