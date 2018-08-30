package org.zerock.domain;

public class TicketVO {
	int tic_num;
	int sc_num;
	String air_name;
	int seat_num;
	int tic_price;
	String engname;
	String gate;
	String soarcwg_time;
	int age_num;
	
	public int getTic_num() {
		return tic_num;
	}
	public void setTic_num(int tic_num) {
		this.tic_num = tic_num;
	}
	public int getSc_num() {
		return sc_num;
	}
	public void setSc_num(int sc_num) {
		this.sc_num = sc_num;
	}
	public String getAir_name() {
		return air_name;
	}
	public void setAir_name(String air_name) {
		this.air_name = air_name;
	}
	public int getSeat_num() {
		return seat_num;
	}
	public void setSeat_num(int seat_num) {
		this.seat_num = seat_num;
	}
	public int getTic_price() {
		return tic_price;
	}
	public void setTic_price(int tic_price) {
		this.tic_price = tic_price;
	}
	public String getEngname() {
		return engname;
	}
	public void setEngname(String engname) {
		this.engname = engname;
	}
	public String getGate() {
		return gate;
	}
	public void setGate(String gate) {
		this.gate = gate;
	}
	public String getSoarcwg_time() {
		return soarcwg_time;
	}
	public void setSoarcwg_time(String soarcwg_time) {
		this.soarcwg_time = soarcwg_time;
	}
	public int getAge_num() {
		return age_num;
	}
	public void setAge_num(int age_num) {
		this.age_num = age_num;
	}
	
	@Override
	public String toString() {
		return "TicketVO [tic_num=" + tic_num + ", sc_num=" + sc_num + ", air_name=" + air_name + ", seat_num="
				+ seat_num + ", tic_price=" + tic_price + ", engname=" + engname + ", gate=" + gate + ", soarcwg_time="
				+ soarcwg_time + ", age_num=" + age_num + "]";
	}
	
	
	
}
