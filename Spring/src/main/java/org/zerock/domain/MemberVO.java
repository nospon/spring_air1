package org.zerock.domain;

public class MemberVO {
	int mem_num;
	String id;
	String pass;
	String koname;
	String engname;
	String gender;
	String birth;
	int tel;
	String email;
	String passport;
	String nation;
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getKoname() {
		return koname;
	}
	public void setKoname(String koname) {
		this.koname = koname;
	}
	public String getEngname() {
		return engname;
	}
	public void setEngname(String engname) {
		this.engname = engname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public int getTel() {
		return tel;
	}
	public void setTel(int tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassport() {
		return passport;
	}
	public void setPassport(String passport) {
		this.passport = passport;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	
	@Override
	public String toString() {
		return "MemberVO [mem_num=" + mem_num + ", id=" + id + ", pass=" + pass + ", koname=" + koname + ", engname="
				+ engname + ", gender=" + gender + ", birth=" + birth + ", tel=" + tel + ", email=" + email
				+ ", passport=" + passport + ", nation=" + nation + "]";
	}
	
	
	
}
