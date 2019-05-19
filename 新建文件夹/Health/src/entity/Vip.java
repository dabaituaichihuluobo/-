package entity;

import java.util.Date;

public class Vip {
	int state;
	
	public Vip() {
	}
	public Vip(int state, int vipnum, int vid, Date joindate, int age, int sex, String phone, int viplength, int uid,
			String note, String name, Date expire) {
		super();
		this.state = state;
		this.vipnum = vipnum;
		this.vid = vid;
		this.joindate = joindate;
		this.age = age;
		this.sex = sex;
		this.phone = phone;
		this.viplength = viplength;
		this.uid = uid;
		this.note = note;
		this.name = name;
		this.expire = expire;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	int vipnum;
	public int getVipnum() {
		return vipnum;
	}
	public void setVipnum(int vipnum) {
		this.vipnum = vipnum;
	}
	int vid;
	Date joindate;
	int age;
	int sex;
	String phone;
	int viplength;
	int uid;
	String note;
	String name;
	Date expire;
	
	public Date getExpire() {
		return expire;
	}
	public void setExpire(Date expire) {
		this.expire = expire;
	}
	public int getVid() {
		return vid;
	}
	public void setVid(int vid) {
		this.vid = vid;
	}
	public Date getJoindate() {
		return joindate;
	}
	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getViplength() {
		return viplength;
	}
	public void setViplength(int viplength) {
		this.viplength = viplength;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
